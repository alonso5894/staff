package com.kedu.member.action;

import com.kedu.project.controller.Action;
import com.kedu.project.controller.empListAction;
import com.kedu.project.controller.empViewAction;
import com.kedu.project.controller.empWriteAction;
import com.kedu.project.controller.empWriteFormAction;
import com.kedu.project.controller.noticeListAction;
import com.kedu.project.controller.noticeViewAction;

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
    
    if (command.equals("emp_List")) {
      action = new empListAction();
    } 
    else if (command.equals("emp_WriteView")) {
    	action = new empWriteAction();
    }
    else if (command.equals("emp_WriteView_form")) {
    	action = new empWriteFormAction();
    }
    else if (command.equals("emp_View")) {
    	action = new empViewAction();
    }
    
    
    
    else if (command.equals("notice_List")) {
    	action = new noticeListAction();
    }

    else if (command.equals("notice_View")) {
    	action = new noticeViewAction();
    }
    return action;
  }
}
