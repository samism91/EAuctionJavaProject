

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Samkit
 */
public class test {

   public static void main(String[] args) throws ParseException {

	   DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	   //get current date time with Date()
	   Date date = new Date("29/05/2012");
	  String date1 = dateFormat.format(date);
                   System.out.println(date1);

  Calendar calendar = new GregorianCalendar();
  Calendar  today = Calendar.getInstance();
  today.set(2012,05,28);
  Calendar enddate = Calendar.getInstance();
  enddate.set(2012,05,29);
  long milliseconds1 = today.getTimeInMillis();
        long milliseconds2 = enddate.getTimeInMillis();
        long diff = milliseconds2 - milliseconds1;
        long diffSeconds = diff / 1000;
        long diffMinutes = diff / (60 * 1000);
        long diffHours = diff / (60 * 60 * 1000);
        long diffDays = diff / (24 * 60 * 60 * 1000);
        System.out.println("\nThe Date Different Example");
        System.out.println("Time in milliseconds: " + diff + " milliseconds.");
        System.out.println("Time in seconds: " + diffSeconds + " seconds.");
        System.out.println("Time in minutes: " + diffMinutes + " minutes.");
        System.out.println("Time in hours: " + diffHours + " hours.");
        System.out.println("Time in days: " + diffDays + " days.");

 /* String am_pm;
  int hour = calendar.get(Calendar.HOUR);
  int minute = calendar.get(Calendar.MINUTE);
  int second = calendar.get(Calendar.SECOND);
  if(calendar.get(Calendar.AM_PM) == 0)
  am_pm = "AM";
  else
  am_pm = "PM";
  String p_time =  hour + ":"
+ minute + ":" + second + " " + am_pm;
                  System.out.println(p_time);
 
  

*/
  }

    
}
