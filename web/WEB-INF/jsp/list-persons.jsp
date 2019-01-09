<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
                <span> <i class="fas fa-phone-volume slusalica"> </i></span> 
            </button>
            <a class="telefon" href="${pageContext.request.contextPath}/"> Telefonski imenik</a>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 slika2"></div>
                <div class="col-md-8 slika3">
                    <div id="table">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Ime</th>
                                    <th>Prezime</th>
                                    <th>Email</th>
                                    <th>Broj telefona</th>
                                    <th>Adresa</th>
                                    <th>Grad</th>
                                </tr>
                            </thead>
                            <c:forEach var="temp" items="${persons}">
                                <c:url var="updateLink" value="/person/updateForm">
                                    <c:param name="theId" value="${temp.id}"/>
                                </c:url>
                                 <c:url var="deleteLink" value="/person/deleteForm">
                                    <c:param name="theId" value="${temp.id}"/>
                                </c:url>
       
                                <tr>
                                    <td>${temp.firstName}</td>
                                    <td>${temp.lastName}</td>
                                    <td>${temp.email}</td>
                                    <td>${temp.phoneNumber}</td>
                                    <td>${temp.address}</td>
                                    <td>${temp.city.cityName}</td>
                                    <td><a href="${updateLink}">Izmeni</a> 
                                        |
                                        <a href="${deleteLink}" onclick="if(!(confirm('Da li zaista zelite da obisete korisnika?'))) return false">Obrisi</a> 
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
    </body>

</html>