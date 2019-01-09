<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <!--biblioteka springa -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 slika2"></div>
                <div class="col-md-8 slika3">

                    <form:form action="savePerson" modelAttribute="person" method="POST">
                        <form:hidden path="id"/>
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>Ime:</th>
                                    <td> <form:input path="firstName" required="required"/></td>
                                </tr>
                                <tr>
                                    <th>Prezime:</th>
                                    <td> <form:input path="lastName" required="required"/></td>
                                </tr>
                                <tr>
                                    <th>Broj telefona:</th>
                                    <td> <form:input path="phoneNumber" required="required"/></td>
                                </tr>
                                <tr>
                                    <th>Email:</th>
                                    <td> <form:input path="email"/></td>
                                </tr>
                                <tr>
                                    <th>Adresa:</th>
                                    <td> <form:input path="address" required="required"/></td>
                                </tr>
                                <tr>
                                    <th>Grad:</th>
                                    <td> <form:select  path="city.cityName">
                                            <form:option value="NONE">--SELECT--</form:option>
                                            <option selected="true">${person.city.cityName}</option> 
                                            <c:forEach var="c" items="${city}">
                                            <option>${c.cityName}</option>
                                            </c:forEach>
                                         </form:select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="submit" value="Sačuvaj" class="submit"/>
                    </form:form>            
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </body>
</html>
