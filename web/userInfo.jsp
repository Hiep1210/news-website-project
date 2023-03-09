<%@page import="model.User"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>UserInfo</title>
        <!-- Icons -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- Embed Bootstrap -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <!-- Embed Global CSS -->
        <link rel="stylesheet" href="css/styleGlobal.css">
        <!-- Embed category CSS -->
        <link rel="stylesheet" href="css/styleCategory.css">
        <!-- Embed userInfo CSS -->
        <link rel="stylesheet" href="css/styleUserInfo.css">

    </head>

    <body>
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container-fluid">
                <!-- NAVBAR -->
                <div class="navbar-logo col-md-3">
                    <a class="navbar-brand" href="index.html">
                        <img style="width: 100px;" src="image/branding/vice logo.png" alt="">
                    </a>
                </div>
                <!-- NAVBAR TOOGLER -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- NAVBAR CATEGORY -->
                <div class="collapse navbar-collapse col-md-5" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <%
                            ArrayList<Category> cat_name = (ArrayList< Category>) session.getAttribute("cat_list");
                            for (int idx = 0; idx < cat_name.size(); idx++) {
                        %>
                        <div class="nav-item">
                            <a class="nav-link hover-animation-underline" href="getNewsSameCategory?cat_id=<%= cat_name.get(idx).getId() %>&name=<%= cat_name.get(idx).getName()%>&des=<%= cat_name.get(idx).getDes()%>"><%= cat_name.get(idx).getName()%></a>
                        </div>
                        <%}%>
                    </ul>
                </div>
                <!-- NAVBAR LOGIN -->
                <div class="navbar-login col-md-3">
                    <a href="" id="navbar-icon-user">
                        <i class="material-icons hover-animation-grow">person</i>
                    </a>
                </div>
            </div>
        </nav>

        <!-- spacer for fixed navbar -->
        <div style="height: 84px;" class="spacer"></div>

        <div class="container-fluid user-info">
            <div class="row nopadding">
                <div class="col-md-6 user-info-main">
                    <div class="user-info-main-image">
                        <img class="rounded-circle" src="image/user/alan wong.webp" alt="">
                    </div>
                    <div class="user-info-main-text">
                        <h1>Alan Wong</h1>
                        <h4>alan.wong@vice.com</h4>
                    </div>
                </div>
                <div class="col-md-6 container-fluid user-info-detail">
                    <div class="user-info-detail-body">
                        <a href="editUserInfo.html">
                            <i style="color: black;" class="material-icons">settings</i>
                            <span>Edit</span>
                        </a>
                        <% User user1 = (User)session.getAttribute("user"); %>
                        <p><span>Id: </span><%= user1.getId() %></p>
                        <p><span>Username: </span><%= user1.getUname() %></p>
                        <p><span>Real Name: </span> <%= user1.getName()%></p>
                        <p><span>Gender: </span> <%= user1.getGender()%></p>
                        <p><span>Date Of Birth: </span> <%= user1.getDob()%></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- SAVED NEWS TITLE -->
        <div class="latest-title user-info-titles nopadding">
            <h1>SAVED</h1>
            <h1>NEWS</h1>
        </div>
        <!-- SAVED NEWS -->
        <div class="container-fluid">
            <div class="row nopadding">
                <div class="card col-md-4 nopadding">
                    <img src="image/news/airline.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst Natural
                            Disaster ?This Century?</h3>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <h6 class="card-text">Sample author</h6>
                        <h6 class="card-text">Sample time</h6>
                    </div>
                </div>
                <div class="card col-md-4 nopadding">
                    <img src="image/news/airline.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst Natural
                            Disaster ?This Century?</h3>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <h6 class="card-text">Sample author</h6>
                        <h6 class="card-text">Sample time</h6>
                    </div>
                </div>
                <div class="card col-md-4 nopadding">
                    <img src="image/news/airline.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst Natural
                            Disaster ?This Century?</h3>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <h6 class="card-text">Sample author</h6>
                        <h6 class="card-text">Sample time</h6>
                    </div>
                </div>
            </div>
        </div>

        <!-- PAGING NAVIGATOR -->
        <div class="paging-nav">
            <div class="paging-prev">
                <h4>Newer</h4>
            </div>
            <div class="paging-progress">
                <h4>1</h4>
                <h4>5</h4>
            </div>
            <div class="paging-next">
                <h4>Older</h4>
            </div>
        </div>

        <!-- <AUTHOR NAME>'s NEWS TITLE -->
        <div class="latest-title user-info-titles nopadding">
            <h1>Lampung's</h1>
            <h1>NEWS</h1>
        </div>

        <!-- <AUTHOR NAME>'s NEWS -->
        <div class="container-fluid">
            <div class="row nopadding">
                <div class="card col-md-4 nopadding">
                    <img src="image/news/airline.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst Natural
                            Disaster ?This Century?</h3>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <h6 class="card-text">Sample author</h6>
                        <h6 class="card-text">Sample time</h6>
                    </div>
                </div>
                <div class="card col-md-4 nopadding">
                    <img src="image/news/airline.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst Natural
                            Disaster ?This Century?</h3>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <h6 class="card-text">Sample author</h6>
                        <h6 class="card-text">Sample time</h6>
                    </div>
                </div>
                <div class="card col-md-4 nopadding">
                    <img src="image/news/airline.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h3 class="card-title">Thousands Uncontactable As New Zealand Grapples with Its Worst Natural
                            Disaster ?This Century?</h3>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <h6 class="card-text">Sample author</h6>
                        <h6 class="card-text">Sample time</h6>
                    </div>
                </div>
            </div>
        </div>

        <!-- PAGING NAVIGATOR -->
        <div class="paging-nav">
            <div class="paging-prev">
                <h4>Newer</h4>
            </div>
            <div class="paging-progress">
                <h4>1</h4>
                <h4>5</h4>
            </div>
            <div class="paging-next">
                <h4>Older</h4>
            </div>
        </div>

        <!-- FOOTER -->
        <div class="footer">
            <img class="rotate" style="width: 100px;" src="image/branding/VMG-logo-updated.png" alt="">
            <ul>
                <li>Tr?n Th? Hùng</li>
                <li>Lý Th? L??ng</li>
                <li>Phùng Phúc Lâm</li>
                <li>Nguy?n Hoàng Hi?p</li>
                <li>Nguy?n Chí Trung</li>
            </ul>
            <p>@ 2023 PRj301 HE1725</p>
        </div>
    </body>

</html>