

import java.io.Serializable;
import java.util.Date;

public class EmailBean implements Serializable {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	private String emailSubject		= null;
	private String emailMesaage		= null;

	private Date emailDate			= null;

	private String fromAddress		= null;
	private String toAddress		= null;
	private String ccAddress		= null;
	private String bccAddress		= null;

	private boolean isHTMLContents	= false;
	private boolean isSent			= false;

	public EmailBean() {
		super();
		this.emailSubject	= null;
		this.emailMesaage	= null;

		this.emailDate		= null;

		this.fromAddress	= null;
		this.toAddress		= null;
		this.ccAddress		= null;
		this.bccAddress		= null;

		this.isHTMLContents	= false;
		this.isSent			= false;

	}


	public EmailBean(

			String emailSubject,
			String emailMesaage,
			Date emailDate,

			String fromAddress,
			String toAddress,
			String ccAddress,
			String bccAddress,

			boolean isHTMLContents

			) {
		super();

		this.emailSubject	= emailSubject;
		this.emailMesaage	= emailMesaage;

		this.emailDate		= emailDate;

		this.fromAddress	= fromAddress;
		this.toAddress		= toAddress;
		this.ccAddress		= ccAddress;
		this.bccAddress		= bccAddress;

		this.isHTMLContents	= isHTMLContents;

	}



	/**
	 * @return Returns the bccAddress.
	 */
	public String getBccAddress() {
		return bccAddress;
	}


	/**
	 * @param bccAddress The bccAddress to set.
	 */
	public void setBccAddress(String bccAddress) {
		this.bccAddress = bccAddress;
	}


	/**
	 * @return Returns the ccAddress.
	 */
	public String getCcAddress() {
		return ccAddress;
	}


	/**
	 * @param ccAddress The ccAddress to set.
	 */
	public void setCcAddress(String ccAddress) {
		this.ccAddress = ccAddress;
	}


	/**
	 * @return Returns the emailDate.
	 */
	public Date getEmailDate() {
		return emailDate;
	}


	/**
	 * @param emailDate The emailDate to set.
	 */
	public void setEmailDate(Date emailDate) {
		this.emailDate = emailDate;
	}


	/**
	 * @return Returns the emailMesaage.
	 */
	public String getEmailMesaage() {
		return emailMesaage;
	}


	/**
	 * @param emailMesaage The emailMesaage to set.
	 */
	public void setEmailMesaage(String emailMesaage) {
		this.emailMesaage = emailMesaage;
	}


	/**
	 * @return Returns the emailSubject.
	 */
	public String getEmailSubject() {
		return emailSubject;
	}


	/**
	 * @param emailSubject The emailSubject to set.
	 */
	public void setEmailSubject(String emailSubject) {
		this.emailSubject = emailSubject;
	}


	/**
	 * @return Returns the fromAddress.
	 */
	public String getFromAddress() {
		return fromAddress;
	}


	/**
	 * @param fromAddress The fromAddress to set.
	 */
	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}


	/**
	 * @return Returns the isHTMLContents.
	 */
	public boolean isHTMLContents() {
		return isHTMLContents;
	}


	/**
	 * @param isHTMLContents The isHTMLContents to set.
	 */
	public void setHTMLContents(boolean isHTMLContents) {
		this.isHTMLContents = isHTMLContents;
	}


	/**
	 * @return Returns the isSent.
	 */
	public boolean isSent() {
		return isSent;
	}


	/**
	 * @param isSent The isSent to set.
	 */
	public void setSent(boolean isSent) {
		this.isSent = isSent;
	}


	/**
	 * @return Returns the toAddress.
	 */
	public String getToAddress() {
		return toAddress;
	}


	/**
	 * @param toAddress The toAddress to set.
	 */
	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}

}//end of class - EmailBean