

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿을 직접 만드는 이유는 빠르다. 그리고 jsp에 있는 쓸데없는 코드를 생략할 수 있다.
@WebServlet("/servletProc")
public class servletProc extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
    public servletProc() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 두 방식 모두에서 같은 출력문 찍으려면 하나의 방식에서 출력하고 다른 방식에서는 그 메소드를 호출하면 됨 (중요!), HttpServletRequest request안에 입력받은 값이 key value형태로, HttpServletResponse response는 처리가 끝나면 html로 응답처리해줌
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); //post문서 방식으로 보낼 때는 한글이 있으면 이걸 꼭 써야함!! 한글깨짐,, 꼭 해줘야함!!
		response.setContentType("text/html;charset=utf-8"); //jsp에는 맨 위에 html로 써줌, 서블릿에서는 이렇게 직접 써야함
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String hobby[] = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String hero = request.getParameter("hero");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head></head>");
		out.println("<title>서블릿 연습</title>");
		out.println("<body>");
		out.print("이름 : " + name + "<br>");
		out.print("ID : " + id + "<br>");
		out.print("PW : " + pw + "<br>");
		out.print("취미 : " + Arrays.toString(hobby) + "<br>"); //원래 for문돌려서 찍어야함
		out.print("과목 : " + major + "<br>");
		out.print("영웅 : " + hero + "<br>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
