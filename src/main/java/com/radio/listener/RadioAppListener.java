package com.radio.listener;

import java.util.Calendar;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class RadioAppListener
 *
 */
public class RadioAppListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public RadioAppListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
        ServletContext app = sce.getServletContext();
        
        String contextRoot = app.getContextPath();  
        
        app.setAttribute("root", contextRoot);
        
        app.setAttribute("pictroomStaticPath", "https://objectstorage.ap-seoul-1.oraclecloud.com/n/cndwlmgtk97g/b/bucket-20210217-1820/o/");
    }
	
}
