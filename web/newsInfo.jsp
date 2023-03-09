<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
    <!-- Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- Embed Bootstrap -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <!-- Embed Global CSS -->
    <link rel="stylesheet" href="css/styleGlobal.css">
    <!-- Embed newsInfo CSS -->
    <link rel="stylesheet" href="css/styleNewsInfo.css">
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
            <div class="collapse navbar-collapse col-md-6" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <%
                                ArrayList<Category> cat_name = (ArrayList< Category>) session.getAttribute("cat_list");
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
                <a href="" id="navbar-icon-user">
                    <i class="material-icons hover-animation-grow">person</i>
                </a>
            </div>
        </div>
    </nav>

    <!-- spacer for fixed navbar -->
    <div style="height: 84px;" class="spacer"></div>

    <div class="scroller">
        <!-- HEADING -->
        <div class="heading">
            <div class="container-fluid">
                <!-- getCategory here -->
                <a class="heading-category" href="">Sample Category</a>
                <!-- getTitle here -->
                <h1 class="heading-title">Thousands Uncontactable As New Zealand Grapples with Its Worst
                    Natural
                    Disaster ?This Century?</h1>
            </div>
        </div>
        <!-- SUB-HEADING -->
        <div class="sub-heading">
            <div class="container-fluid">
                <div class="col-md-7 nopadding">
                    <!-- getSubtitle here -->
                    <h4 class="sub-heading-text">The U.S. has warned China of severe consequences and sanctions if it
                        supplies weapons to assist Russia?s aggression against Ukraine.</h4>
                    <div class="author">
                        <a class="author-info" href="authorInfo.html">
                            <!-- Author image here -->
                            <img class="author-image rounded-circle" src="image/user/default.jpg" alt="">
                            <p class="author-name nopadding">By <span>Author name</span></p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- NEWS CONTENT -->
        <div class="news-content">
            <div class="container-fluid">
                <div class="col-md-7 nopadding">
                    <div class="news-content-image">
                        <img src="image/news/New Zealand Grapples.webp" alt="">
                    </div>
                    <!-- getText here -->
                    <div class="news-content-text">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quisquam fuga! Debitis
                            voluptatibus delectus repellendus explicabo sit quidem deleniti, vero doloribus cum illo!
                            Quas, voluptas distinctio? Placeat, molestias. Quia, incidunt? Lorem ipsum dolor sit amet
                            consectetur adipisicing elit. Nostrum error eaque delectus, necessitatibus repudiandae
                            tenetur saepe, a dolorum explicabo numquam quidem modi praesentium itaque aliquam labore
                            tempore natus! Consectetur, molestias. Lorem ipsum dolor sit amet consectetur adipisicing
                            elit. Adipisci similique est recusandae minima sit, voluptatibus explicabo dolorum
                            asperiores velit quisquam! Placeat quibusdam ut cum veritatis? Laudantium delectus sequi
                            quasi rem?
                            <br><br> Lorem ipsum dolor, sit amet consectetur adipisicing elit. Possimus assumenda
                            perferendis repudiandae id reprehenderit, ab provident facere vitae obcaecati nihil
                            blanditiis, accusamus sed omnis hic vel laudantium at expedita ducimus. Lorem ipsum, dolor
                            sit amet consectetur adipisicing elit. Nobis esse, dolor sequi debitis beatae, totam
                            consequuntur omnis maxime laboriosam harum perspiciatis odio repellendus praesentium,
                            obcaecati officiis animi! Quas, perferendis alias. Lorem ipsum dolor sit amet consectetur
                            adipisicing elit. Dolores, itaque! Nihil sint eum, nesciunt ratione provident ab, soluta
                            fuga autem recusandae aliquid laudantium quidem, ex quae sequi ipsum aperiam similique.
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab, quisquam fuga! Debitis
                            voluptatibus delectus repellendus explicabo sit quidem deleniti, vero doloribus cum illo!
                            Quas, voluptas distinctio? Placeat, molestias. Quia, incidunt? Lorem ipsum dolor sit amet
                            consectetur adipisicing elit. Nostrum error eaque delectus, necessitatibus repudiandae
                            tenetur saepe, a dolorum explicabo numquam quidem modi praesentium itaque aliquam labore
                            tempore natus! Consectetur, molestias. Lorem ipsum dolor sit amet consectetur adipisicing
                            elit. Adipisci similique est recusandae minima sit, voluptatibus explicabo dolorum
                            asperiores velit quisquam! Placeat quibusdam ut cum veritatis? Laudantium delectus sequi
                            quasi rem?
                            <br><br> Lorem ipsum dolor, sit amet consectetur adipisicing elit. Possimus assumenda
                            perferendis repudiandae id reprehenderit, ab provident facere vitae obcaecati nihil
                            blanditiis, accusamus sed omnis hic vel laudantium at expedita ducimus. Lorem ipsum, dolor
                            sit amet consectetur adipisicing elit. Nobis esse, dolor sequi debitis beatae, totam
                            consequuntur omnis maxime laboriosam harum perspiciatis odio repellendus praesentium,
                            obcaecati officiis animi! Quas, perferendis alias. Lorem ipsum dolor sit amet consectetur
                            adipisicing elit. Dolores, itaque! Nihil sint eum, nesciunt ratione provident ab, soluta
                            fuga autem recusandae aliquid laudantium quidem, ex quae sequi ipsum aperiam similique.
                        </p>
                    </div>
                </div>
            </div>
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