<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <!--biblioteka springa -->
<!DOCTYPE html>
<html>
    <head>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet"/>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button type="button" class="btn btn-default btn-lg">
                <span> <i class="fas fa-phone-volume slusalica"></i> </span>
            </button>
            <a class="telefon" href="${pageContext.request.contextPath}/"> Telefonski imenik</a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 slika2"></div>
                <div class="col-md-8 slika3">
                    <form:form action="searchPerson/searchByNumberResult" modelAttribute="person" method="GET">
                        Unesite broj telefona:
                        <br>
                        <form:input path="phoneNumber" required="required"/>
                        <input type="submit" value="Traži" class="submit"/>
                    </form:form>            
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </body>
</html>
