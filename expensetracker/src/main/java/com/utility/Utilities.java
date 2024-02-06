package com.utility;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Utilities {

	
	public Date getDateFromString(String dateString){
	    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	    java.util.Date parsed = null;
	    try {
	        parsed = format.parse(dateString);
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }
	    Date date = new Date(parsed.getTime());
	    return date;
	}
}
