package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class helloworld
 */
@WebServlet("/hw")
public class helloworld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public helloworld() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	System.out.println("init");
    }
    
    @Override
    public void destroy() {
    	// TODO Auto-generated method stub
    	System.out.println("destroy");
    }
   
    
    //init 전에 선처리작업 어노테이션 servlet 객체생성 후처리
    @PostConstruct
    private void PostConstruct() {
		// TODO Auto-generated method stub
    	System.out.println("post construct");
	}
    
    //Destroy 후에 후처리작업 어노테이션
    @PreDestroy
    private void PreDestroy() {
		// TODO Auto-generated method stub
    	System.out.println("pre destroy");
	}
    
    

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doget");
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("Hello!!");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("dopost");
	}

}
