<%@page contentType="text/html" pageEncoding="UTF-8" %>

<html>
    <head>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet"/>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg prviNavBar">
            <button type="button" class="btn btn-default btn-lg tel">
                <span> <i class="fas fa-phone-volume prvaSlusalica">  Telefonski imenik</i> </span>
            </button>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">

                        <input type="button" value="Pretraga po broju"
                               onclick="window.location.href = 'person/searchByNumber';return false;"
                               class="add-button"/>
                    </li>
                    <li class="nav-item active">
                        <input type="button" value="Pretraga po imenu"
                               onclick="window.location.href = 'person/searchByName';return false;"
                               class="add-button"/>
                    </li>
                    <li class="nav-item active">
                        <input type="button" value="Pretraga po adresi"
                               onclick="window.location.href = 'person/searchByAddress';return false;"
                               class="add-button"/>
                    </li>
                </ul>
            </div>
        </nav>

        <nav class="navbar navbar-expand-lg druginavbar">


            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <input type="button" value="Dodaj novog korisnika"
                               onclick="window.location.href = 'person/addPerson';return false;"
                               />
                    </li>
                    <li class="nav-item active">
                        <input type="button" value="Prikaži sve korisnike"
                               onclick="window.location.href = 'person/list';return false;"
                               />
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid slika">
       
            

                </div>
     
    </body>
</html>
