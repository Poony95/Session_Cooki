package util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class SistUtil {
	
	public static String getCookie(HttpServletRequest request, 
									String name) {
		String value = null;
		Cookie []cookies= request.getCookies();
		if(cookies != null) {		
			for(Cookie c:cookies){
				String n = c.getName();
				if(n.equals(name)){
					value = c.getValue();				
					break;
				}
			}
		}
		
		return value;
	}
}









