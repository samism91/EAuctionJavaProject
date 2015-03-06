

import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.SendFailedException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.event.ConnectionEvent;
import javax.mail.event.ConnectionListener;
import javax.mail.event.TransportEvent;
import javax.mail.event.TransportListener;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class EmailComponent  implements TransportListener, ConnectionListener{

	private String smtpServerAddress = "smtp.yahoo.com";
	private EmailBean emailBean = null;

	public EmailComponent() {
		super();
	}

	public void sendEmail(EmailBean bean){

		System.out.println("Inside sendEmail method of " + this.getClass().getName());

		try{
			emailBean 				= bean;

			String emailSubject 	= emailBean.getEmailSubject();
			String emailMessage 	= emailBean.getEmailMesaage();
			Date emailDate 			= emailBean.getEmailDate();
			String fromAdd 			= emailBean.getFromAddress();
			String toAdd 			= emailBean.getToAddress();
			String ccAdd 			= emailBean.getCcAddress();
			String bccAdd 			= emailBean.getBccAddress();
			boolean isHTMLContents 	= emailBean.isHTMLContents();

			if(emailDate == null){
				emailDate = new Date();
			}



			// set the SMTP host property value
			Properties properties = System.getProperties();
			properties.put("mail.smtp.host", smtpServerAddress);
			properties.put("mail.smtp.starttls.enable","true");
			properties.put("mail.smtp.auth", "true");



			// create a JavaMail session
			Session session = Session.getInstance(properties, new MyAuthenticator());

			// create a new MIME message
			MimeMessage message = new MimeMessage(session);

			//set the sent date of the message
			message.setSentDate(emailDate);

			// set the subject
			message.setSubject(emailSubject);

			// set the message body
			if(isHTMLContents){
				message.setContent(emailMessage, "text/html");
			}
			else{
				message.setContent(emailMessage, "text/plain");
			}

			// set the from address
			Address fromAddress = new InternetAddress(fromAdd);
			message.setFrom(fromAddress);

			Address[] toAddress = null;
			// set the to address
			if (toAdd != null){
				toAddress = InternetAddress.parse(toAdd);
				message.setRecipients(Message.RecipientType.TO, toAddress);
			}
			else{
				throw new MessagingException("No \"To\" address specified");
			}

			Address[] ccAddress = null;
			//set the cc address
			if(ccAdd != null){
				ccAddress = InternetAddress.parse(ccAdd);
				message.setRecipients(Message.RecipientType.CC, ccAddress);
			}

			Address[] bccAddress = null;
			//set the cc address
			if(bccAdd != null){
				bccAddress = InternetAddress.parse(bccAdd);
				message.setRecipients(Message.RecipientType.BCC, bccAddress);
			}

			System.out.println("Email Bean :: " + emailBean);
			// send the message
			Transport trans = null;
			try{
				trans = session.getTransport("smtp");


				session.setDebug(true);

				trans.connect();
				trans.addConnectionListener(this);
				trans.addTransportListener(this);


				// Create the message part
		         BodyPart messageBodyPart = new MimeBodyPart();

		         // Fill the message
		         messageBodyPart.setText("Thanx For registering your product");

		         // Create a multipar message
		         Multipart multipart = new MimeMultipart();

		         // Set text message part
		         multipart.addBodyPart(messageBodyPart);

		         // Part two is attachment
		         messageBodyPart = new MimeBodyPart();
		        //Attached File
                         String filename = "d:/Demo.java";
		         DataSource source = new FileDataSource(filename);
		         messageBodyPart.setDataHandler(new DataHandler(source));
		         messageBodyPart.setFileName(filename);
		         multipart.addBodyPart(messageBodyPart);

		         // Send the complete message parts
		         message.setContent(multipart );


				//message.setFileName("c:/test.txt");

				trans.sendMessage(message,toAddress);

				Thread.sleep(100);

				emailBean.setSent(true);
			}//end of try statement
			catch(InterruptedException e){
				emailBean.setSent(false);
				System.out.println("Error while waiting for mail send status");
				e.printStackTrace();
			}//end of catch statement
			finally{
				if(trans != null){
					try {
						trans.close();
					}
					catch(Exception e) {
						emailBean.setSent(false);
						System.out.println("Error while closing mail trasaction. " + e);
						e.printStackTrace();
					}
				}
			}//end of finally statement
		}//end of try statement
		catch (AddressException e){
			emailBean.setSent(false);
			e.printStackTrace();
			System.out.println("Invalid e-mail address." + e.getMessage());
		}//end of catch statement
		catch (SendFailedException e){
			emailBean.setSent(false);
			e.printStackTrace();
			System.out.println("Send failed." + e.getMessage());
		}//end of catch statement
		catch (MessagingException e){
			emailBean.setSent(false);
			e.printStackTrace();
			System.out.println("Unexpected error." + e.getMessage());
		}//end of catch statement
		catch(Exception ex){
			emailBean.setSent(false);
			ex.printStackTrace();
		}

	}//end of method - SendEmail

	/* (non-Javadoc)
	 * @see javax.mail.event.TransportListener#messageDelivered(javax.mail.event.TransportEvent)
	 */
	public void messageDelivered(TransportEvent arg0) {
		emailBean.setSent(true);
		System.out.println("Email is delievered.");
	}
	/* (non-Javadoc)
	 * @see javax.mail.event.TransportListener#messageNotDelivered(javax.mail.event.TransportEvent)
	 */
	public void messageNotDelivered(TransportEvent arg0) {
		emailBean.setSent(false);
		System.out.println("Email is not delievered.");
	}
	/* (non-Javadoc)
	 * @see javax.mail.event.TransportListener#messagePartiallyDelivered(javax.mail.event.TransportEvent)
	 */
	public void messagePartiallyDelivered(TransportEvent arg0) {
		emailBean.setSent(false);
		System.out.println("Email is partially delievered.");
	}
	/* (non-Javadoc)
	 * @see javax.mail.event.ConnectionListener#closed(javax.mail.event.ConnectionEvent)
	 */
	public void closed(ConnectionEvent arg0) {
		System.out.println("Connection to smtp server is closed.");
	}
	/* (non-Javadoc)
	 * @see javax.mail.event.ConnectionListener#disconnected(javax.mail.event.ConnectionEvent)
	 */
	public void disconnected(ConnectionEvent arg0) {
		System.out.println("Connection to smtp server is disconnected.");
	}
	/* (non-Javadoc)
	 * @see javax.mail.event.ConnectionListener#opened(javax.mail.event.ConnectionEvent)
	 */
	public void opened(ConnectionEvent arg0) {
		System.out.println("Connection to smtp server is opened.");
	}


	public static void main(String[] args){
		System.out.println("*************START******************");
		EmailBean emailBean = new EmailBean();

		emailBean.setEmailSubject("Product Registration Information");
		emailBean.setEmailDate(new Date());
		//emailBean.setHTMLContents(false);
		emailBean.setHTMLContents(true);

		emailBean.setFromAddress("samkit_c316@yahoo.com");
		emailBean.setToAddress("");

		StringBuffer strBuffer  = new StringBuffer("");
		strBuffer
			.append("Hello Message");


		emailBean.setEmailMesaage(strBuffer.toString());

		EmailComponent emailComponent = new EmailComponent();
		emailComponent.sendEmail(emailBean);

		System.out.println("**************END*******************");
	}

}//end of class - EmailComponent

class MyAuthenticator extends Authenticator{

	/* (non-Javadoc)
	 * @see javax.mail.Authenticator#getPasswordAuthentication()
	 */

	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("samkit_c316@yahoo.com","a99999");
	}

}