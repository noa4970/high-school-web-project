<%@ Page Language="C#" AutoEventWireup="true" Inherits="finalProject.tring.theDate1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    
    <div class="lc">
        <img src="../images/לוגו שקוף.png" />
        <div class="menuBar">
            <p class="menu">
                <a href="homepage.html" class="menuAA">דף הבית</a>
            </p>
            <p class="Outline">|</p>
            <p class="menu">
                <a href="about.html" class="menuAA">אודות</a>
            </p>
            <p class="Outline">|</p>
            <p class="menu">
                <a href="Photos.html" class="menuAA">תמונות</a>
            </p>
            <p class="Outline">|</p>
            <p class="menu">
                <a href="reviews.aspx" class="menuAAA">ביקורות</a>
            </p>
            <p class="Outline">|</p>
            <p class="menu">
                <a href="priceList.html" class="menuAA">מחירון</a>
            </p>
            <p class="Outline">|</p>
            <p class="menu">
                <a href="Contact%20Us.html" class="menuAA">צור קשר</a>
            </p>
            <p class="Outline">|</p>
            <p class="menu">
                <a href="clubEntrance.aspx" class="menuAA">המועדון שלנו</a>
            </p>
        </div>
    </div>

    <div class="reviewdAll">
        <img class="chocolate" src="../images/שוקולד.jpg" />
        <div class="slideshow-container">
            <div class="mySlides fade">
                <img class="image1" src="../images/review1.jpg" />
                <div class="numbertext">6 / 6</div>

            </div>
            <div class="mySlides fade">
                <img class="image1" src="../images/review2.jpg" />
                <div class="numbertext">5 / 6</div>
            </div>
            <div class="mySlides fade">
                <img class="image1" src="../images/review3.jpg" />
                <div class="numbertext">4 / 6</div>
            </div>
            <div class="mySlides fade">
                <img class="image1" src="../images/review4.jpg" />
                <div class="numbertext">3 / 6</div>
            </div>
            <div class="mySlides fade">
                <img class="image1" src="../images/review5.jpg" />
                <div class="numbertext">2 / 6</div>
            </div>
            <div class="mySlides fade">
                <img class="image1" src="../images/review6.jpg" />
                <div class="numbertext">1 / 6</div>
            </div>

            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>

            <div style="text-align: center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
                <span class="dot" onclick="currentSlide(5)"></span>
                <span class="dot" onclick="currentSlide(6)"></span>
            </div>
        </div>
    </div>
    <script>
        let slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
    
    <div class="bottomLine">
        <img src="../images/לוגו שקוף.png" />
        <h5>שבי פלס // רחוב נחמיה 18, ב"ב // 03-6192546</h5>
        <br />
        <div class="copywrite">
            <h6> All rights reserved to Noa Peles &copy;</h6>
        </div>
    </div>
</body>
</html>
