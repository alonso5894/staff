package com.kedu.project.action;

import com.kedu.project.controller.Action;
import com.kedu.project.controller.empListAction;
import com.kedu.project.controller.empViewAction;
import com.kedu.project.controller.empWriteAction;
import com.kedu.project.controller.empWriteFormAction;
import com.kedu.project.controller.indexAction;
import com.kedu.project.controller.indexListAction;
import com.kedu.project.controller.loginAction;
import com.kedu.project.controller.loginFormAction;
import com.kedu.project.controller.noticeDeleteAction;
import com.kedu.project.controller.noticeListAction;
import com.kedu.project.controller.noticeUpdateAction;
import com.kedu.project.controller.noticeUpdateFormAction;
import com.kedu.project.controller.noticeViewAction;
import com.kedu.project.controller.noticeWriteAction;
import com.kedu.project.controller.noticeWriteFormAction;
import com.kedu.project.controller.projectDeleteAction;
import com.kedu.project.controller.projectListAction;
import com.kedu.project.controller.projectUpdateAction;
import com.kedu.project.controller.projectUpdateFormAction;
import com.kedu.project.controller.projectViewAction;
import com.kedu.project.controller.projectWriteAction;
import com.kedu.project.controller.projectWriteFormAction;

public class ActionFactory {
  private static ActionFactory instance = new ActionFactory();

  public ActionFactory() {
    super();
  }

  public static ActionFactory getInstance() {
    return instance;
  }

  public Action getAction(String command) {
    Action action = null;
    System.out.println("ActionFactory  :" + command);
    
    if (command.equals("login")) {
        action = new loginAction();
      } 
    else if (command.equals("login_Form")) {
        action = new loginFormAction();
      } 
    
    else if (command.equals("emp_List")) {
      action = new empListAction();
    } 
    else if (command.equals("emp_Write")) {
    	action = new empWriteAction();
    }
    else if (command.equals("emp_Write_form")) {
    	action = new empWriteFormAction();
    }
    else if (command.equals("emp_View")) {
    	action = new empViewAction();
    }
    
    else if (command.equals("index")) {
    	action = new indexAction();
    }
    
    
    
    else if (command.equals("notice_List")) {
    	action = new noticeListAction();
    }

    else if (command.equals("notice_View")) {
    	action = new noticeViewAction();
    }
    

    else if (command.equals("notice_Write_Form")) {
    	action = new noticeWriteFormAction();
    }
    

    else if (command.equals("notice_Write")) {
    	action = new noticeWriteAction();
    }
    

    else if (command.equals("notice_Update")) {
    	action = new noticeUpdateAction(); 
    }
    

    else if (command.equals("notice_Update_Form")) {
    	action = new noticeUpdateFormAction();
    }
    

    else if (command.equals("notice_Delete")) {
    	action = new noticeDeleteAction();
    }
  
   else if (command.equals("index_List")) {
    	action = new indexListAction();
    }
    
    
    
    
   else if (command.equals("project_List")) {
   	action = new projectListAction();
   }

   else if (command.equals("project_Write")) {
   	action = new projectWriteAction();
   }
   else if (command.equals("project_Write_Form")) {
	   	action = new projectWriteFormAction();
	   }
   else if (command.equals("project_View")) {
	   	action = new projectViewAction();
	   }
   else if (command.equals("project_Delete")) {
	   	action = new projectDeleteAction();
	   }
   else if (command.equals("project_Update")) {
	   action = new projectUpdateAction();
   }
   else if (command.equals("project_Update_Form")) {
	   action = new projectUpdateFormAction();
   }
    return action;
  }
}
