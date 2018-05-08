<%-- 
    Document   : home
    Created on : 07/05/2018, 21:38:40
    Author     : a
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean tested=false;
    double grade=0;
    if(request.getParameter("tested")!=null){
        tested=true;
        int count = 0;
        for (int i=0;i<Quiz.getTest().size(); i++){
            Question q = Quiz.getTest().get(i);
            String p = request.getParameter(q.getQuestion());
            if (q.getAnswer().equals(p))
                count++;
        }
        grade = 100.0 * ((double)(count)/Quiz.getTest().size());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <% if (tested){ %>
        <h2>Você acertou <%=grade%>% das questões!</h2>
        <%}%>
        <h2><a href="quiz.jsp">Realizar QUIZ</a></h2>
    </body>
</html>
