package controller;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.personDao;


@WebServlet({"/index","/check","/result","/result2","/register","/reg","/update","/resign","/delete","/updatePerson"})
public class PersonController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		personDao pDao = new personDao(req,resp);
		String path=null;
		String cmd = req.getServletPath();
		switch(cmd) {
		case "/check":
			path=pDao.check();
			break;
		case "/result":
			path=pDao.getPersonlist();
			break;
		case "/result2":
			path=pDao.getPersonlist2();
			break;
		case "/register":
			path=pDao.register();
			break;
		case "/reg":
			path=pDao.regPerson();
			break;
		case "/updatePerson":
			path=pDao.updatePerson();
			break;
		case "/update":
			path=pDao.update();
			break;
		case "/resign":
			path=pDao.resign();
			break;
		case "/delete":
			path=pDao.delete();
			break;
		}
		System.out.println(req.getServletPath());
		pDao.close();
		req.getRequestDispatcher(path).forward(req, resp);
		
		
		
	}
   
	

}
