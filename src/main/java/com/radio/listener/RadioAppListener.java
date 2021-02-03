package com.radio.listener;

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
    }
	
}
