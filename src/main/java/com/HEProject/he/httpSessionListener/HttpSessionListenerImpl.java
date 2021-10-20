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
	
	//중복로그인 방지
	public synchronized static String getSessionidCheck(String type, String usRn){
		String rlt = "";
		for( String key : oldSession.keySet() ){
			HttpSession session = oldSession.get(key);
			if(session != null &&  session.getAttribute(type) != null && session.getAttribute(type).toString().equals(usRn) ){
				rlt =  key.toString();
			}
		}
		removeOldSession(rlt);
		return rlt;
	}
	
	private static void removeOldSession(String userId){    	
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
