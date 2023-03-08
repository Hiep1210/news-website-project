<%@page import="model.*"%>
<%@page import="java.util.*"  %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>VICE</title>
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <!-- Icons -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- CSS -->
        <link rel="stylesheet" href="css/styleGlobal.css">
    </head>

    <body>
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container-fluid">
                <!-- NAVBAR -->
                <div class="navbar-logo col-md-3">
                    <a class="navbar-brand" href="#">
                        <img style="width: 100px;" src="image/branding/vice logo.png" alt="">
                    </a>
                </div>
                <!-- NAVBAR TOOGLER -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- NAVBAR CATEGORY -->
                <div class="collapse navbar-collapse col-md-6" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <%
                            ArrayList<Category> cat_name = (ArrayList< Category>) request.getAttribute("cat_list");
                            for (int idx = 0; idx < cat_name.size(); idx++) {
                        %>
                        <div class="nav-item">
                            <a class="nav-link hover-animation-underline" href=""><%= cat_name.get(idx).getName() %></a>
                        </div>
                        <%}%>
                    </ul>
                </div>
                <!-- NAVBAR LOGIN -->
                <div class="navbar-login col-md-3">
                    <%  %>
                    <a href="login.jsp" id="navbar-icon-user">
                        <i class="material-icons hover-animation-grow">person</i>
                    </a>
                </div>
            </div>
        </nav>

        <!-- spacer for fixed navbar -->
        <div style="height: 84px;" class="spacer"></div>

        <!-- Hotest News -->
        <!-- 2 row: 1st be full row; 2nd be 3 smaller one -->
        <div class="hotest-news">
            <div class="container-fluid">
                <div style="background-color: black;" class="row card featured-card nopadding">
                    <div class="row nopadding">
                        <%
                            ArrayList<News> news_list = (ArrayList<News>) request.getAttribute("news_list");
                            ArrayList<String> cat_nameList = (ArrayList<String>) request.getAttribute("cat_namelist");
                            ArrayList<String> user_nameList = (ArrayList<String>) request.getAttribute("user_namelist");
                        %>
                        <div class="col-md-8 featured-card-image nopadding">
                            <img class="card-img" src="image/news/New Zealand Grapples.webp" alt="...">
                        </div>
                        <div class="col-md-4 featured-card-content align-self-center nopadding">
                            <div class="card-body">
                                <h5 class="card-subtitle"><%= cat_nameList.get(0)%></h5><!-- first news -->
                                <h3 class="card-title"><%= news_list.get(0).getTitle()%></h3>
                                <p class="card-text"><%= news_list.get(0).getSubtitle()%></p>
                                <h6 class="card-text"><%= user_nameList.get(0) %></h6>
                            </div>
                        </div>
                    </div>
                <a style="position: absolute; width: 100%; height: 100%;" href="newsInfo.jsp"></a>
                </div>
                <div class="row card-group nopadding">
                    <%
                        for (int idx = 0; idx < 4; idx++) { //display 4 top
                    %>
                    <div class="card">
                        <img src="image/news/New Zealand Grapples.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title"><%= news_list.get(idx).getTitle()%></h3>
                            <p class="card-text"><%= news_list.get(idx).getSubtitle()%></p>
                            <h6 class="card-text"><%= user_nameList.get(idx) %></h6>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>

        <!-- Title -->
        <div class="latest-title nopadding">
            <h1>THE</h1>
            <h1>LATEST</h1>
        </div>

        <div class="latest-news">
            <div class="container-fluid">
                <%
                    for (int idx = news_list.size()-1; idx >= 0; idx--) {
                %>
                <div class="row card nopadding">
                    <div class="col-md-8 latest-news-body nopadding">
                        <div class="row nopadding">
                            <div class="col-md-6 card-image nopadding">
                                <img class="card-img" src="image/news/New Zealand Grapples.webp" alt="...">
                            </div>
                            <div class="col-md-6 card-content align-self-center nopadding">
                                <div class="card-body">
                                    <h5 class="card-subtitle"><%= cat_nameList.get(idx) %></h5>
                                    <h3 class="card-title"><%= news_list.get(idx).getTitle() %></h3>
                                    <p class="card-text"><%= news_list.get(idx).getTitle() %></p>
                                    <h6 class="card-text"><%= user_nameList.get(idx) %></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 latest-news-blank nopadding"></div>
                </div>
                <%}%>
            </div>

            <!-- footer -->
            <div class="footer">
                <img class="rotate" style="width: 100px;" src="image/branding/VMG-logo-updated.png" alt="">
                <ul>
                    <li>Tran The Hùng</li>
                    <li>Lý The Luong</li>
                    <li>Phùng Phúc Lâm</li>
                    <li>Nguyen Hoàng Hiep</li>
                    <li>Nguyen Chí Trung</li>
                </ul>
                <p>@ 2023 PRj301 HE1725</p>
            </div>
        </div>
        <!-- Bootstrap script -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    </body>

</html>