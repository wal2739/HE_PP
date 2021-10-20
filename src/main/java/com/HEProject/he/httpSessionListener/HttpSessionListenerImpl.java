package com.HEProject.he.httpSessionListener;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class HttpSessionListenerImpl implements HttpSessionListener{

private static final Map<String, HttpSession> oldSession = new ConcurrentHashMap<String, HttpSession>();
	
	//중복로그인 지우기
	public synchronized static String getSessionidCheck(String type, String compareId){
		String result = "";
		for( String key : oldSession.keySet() ){
			HttpSession hs = oldSession.get(key);
			if(hs != null &&  hs.getAttribute(type) != null && hs.getAttribute(type).toString().equals(compareId) ){
				result =  key.toString();
			}
		}
		removeSessionForDoubleLogin(result);
		return result;
	}
	
	private static void removeSessionForDoubleLogin(String userId){    	
		if(userId != null && userId.length() > 0){
			oldSession.get(userId).invalidate();
			oldSession.remove(userId);    		
		}
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
	    oldSession.put(se.getSession().getId(), se.getSession());
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		if(oldSession.get(se.getSession().getId()) != null){
			oldSession.get(se.getSession().getId()).invalidate();
			oldSession.remove(se.getSession().getId());	
		}
	}

}
