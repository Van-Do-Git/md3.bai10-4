import jdk.nashorn.internal.objects.Global;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import static java.lang.System.out;

@WebServlet(name = "caculate", value = "/caculate")
public class CaculateSeverlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ArithmeticException {
        int first = Integer.parseInt(req.getParameter("first"));
        int second = Integer.parseInt(req.getParameter("second"));
        int chose = Integer.parseInt(req.getParameter("oprator"));
        String exprestion;
        switch (chose) {
            case 1:
                exprestion = "+";
                break;
            case 2:
                exprestion = "-";
                break;
            case 3:
                exprestion = "*";
                break;
            default:
                exprestion = "/";
                break;
        }
        Caculate caculate = new Caculate(first, second);
        req.setAttribute("exprestion", exprestion);
        req.setAttribute("caculate", caculate);
        req.setAttribute("chose", chose);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/caculate.jsp");
        dispatcher.forward(req, resp);
    }
}
