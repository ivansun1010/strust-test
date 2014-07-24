package org.lxh.ajaxdemo;

import java.io.*;
import org.w3c.dom.*;
import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CityServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/xml;charset=GBK");
		PrintWriter out = response.getWriter();
		String test="{  \"firstName\": \"Brett\"}";
		out.println(test);
		System.out.println(test);
		out.close();
	}
}
