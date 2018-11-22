package utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class UniqueIDGenerator {

	public static String  getUniqueID(){
	    DateFormat dateFormat = new SimpleDateFormat("yyddmm");
	    Date date = new Date();
	    String dt=String.valueOf(dateFormat.format(date));
	    Calendar cal = Calendar.getInstance();
	    SimpleDateFormat time = new SimpleDateFormat("HHmm");
	    String tm= String.valueOf(time.format(new Date()));
	    String id= dt+tm;
//	    System.out.println(id);
	    return id;   
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
