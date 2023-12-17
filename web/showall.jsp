
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>


<!-- SIDEBAR -->
<div class="sidebar" style="width: 300px; background-color:#B6D8EC">
    <div class="sidebar-background">
        <h2 class="logo-text">
            Quiz App:
        </h2>

        <div class="left-menu">
            <a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>
            <a href="adm-page.jsp?pgprt=2"><h2>Courses</h2></a>
            <a class="active" href="adm-page.jsp?pgprt=3"><h2>Questions</h2></a>
            <a href="adm-page.jsp?pgprt=1"><h2>Accounts</h2></a>
        </div>
    </div>
</div>
<!-- CONTENT AREA -->
<div class="content-area-showall" style="width: 100%;">
    <center>
        <%
            if (request.getParameter("coursename") != null) {
                ArrayList list = pDAO.getAllQuestions(request.getParameter("coursename"));
                for (int i = 0; i < list.size(); i++) {
                    Questions question = (Questions) list.get(i);

        %>
        <div class="question-panel" style="width: 100%;">
            <div class="question" >
                <label class="question-label"><%=i + 1%></label>
                <%=question.getQuestion()%>	
                <a href="controller.jsp?page=questions&operation=delQuestion&qid=<%=question.getQuestionId()%>" 
                   onclick="return confirm('Are you sure you want to delete this ?');" >
                    <div class="delete-btn" style="position: absolute;right: 10px;top: -20px;">delete</div></a>
            </div>
            <div class="answer">
                <label class="show"><%=question.getOpt1()%></label>
                <label class="show"><%=question.getOpt2()%></label>
                <label class="show"><%=question.getOpt3()%></label>
                <label class="show"><%=question.getOpt4()%></label>
            
                <span style="display: block;" class="show-correct">Corredct Answer: <%=question.getCorrect()%></span>
            </div>
        </div>

        <%
                           }
                       }%>
    </center>
</div>