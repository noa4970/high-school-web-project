<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="existingClub.aspx.cs" Inherits="finalProject.pages.existingClub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>פאות שבי פלס/כניסת מועדון/חבר קיים</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body onload="startTime()">
    <div class="nav">
        <div class="topIMG"> <div id="txt" class="clock"></div>
            <script>
                function startTime() {
                    const today = new Date();
                    let h = today.getHours();
                    let m = today.getMinutes();
                    let s = today.getSeconds();
                    h = checkTime(h);
                    m = checkTime(m);
                    s = checkTime(s);
                    document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
                    setTimeout(startTime, 1000);
                }

                function checkTime(i) {
                    if (i < 10) { i = "0" + i };
                    return i;
                }
            </script>
            <img src="../images/לוגו שקוף.png" />
        </div>
        <div class="menuBar">
            <div>
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
                    <a href="priceList.html" class="menuAA">מחירון</a>
                </p>
                <p class="Outline">|</p>
                <p class="menu">
                    <a href="contactUs.html" class="menuAA">צור קשר</a>
                </p>
                <p class="Outline">|</p>
                <p class="menu">
                    <a href="clubEntrance.aspx" class="menuAAA">המועדון שלנו</a>
                </p>
            </div>
        </div>
    </div>
    <div class="box1">
        <img src="../images/הקופסא.jpg" />
        <div class='box'>
            <form class="clabForm">
                <h2 class="clabH">התחברי</h2>
                <fieldset>
                    <legend>פרטים אישיים</legend>
                </fieldset>
                <div class="clabD">
                    <label>שם:</label>
                    <br />
                    <input type='text' name='name' placeholder='הכניסי את השם שלך כאן' required='' />
                </div>
                <div class="clabD">
                    <label>סיסמא:</label>
                    <br />
                    <input type='password' name='password' placeholder='הכניסי את הסיסמא שלך כאן' required='' />
                </div>
                <input type="submit" name="send" class="submitBotton" id="send" value="שלח" />
            </form>
            <%=errorAnnounce%>
        </div>
    </div>
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
