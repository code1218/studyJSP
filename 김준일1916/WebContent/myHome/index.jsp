<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">+
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Junil blog</title>
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <div id="container">
        <header id="mainheader">
            <nav id="navbar">
                <!-- 로고(로고이미지, 홈페이지 이름) -->
                <!-- 메뉴(자기소개, 게시글) -->
                <!-- 링크(로그인, 회원가입) -->
                <a href="index.jsp" id="mainlogo"><i id="logo" class="fab fa-adn"></i> Junil blog</a>
                <ul> 
                    <a href="info.jsp"><li>자기소개</li></a>
                    <a href="#"><li>게시글</li></a>
                </ul>
                <div>
                    <a href="login.jsp" class="__links">로그인</a>
                    <a href="join.jsp" class="__links">회원가입</a>
                </div>
                
            </nav>
        </header>
        <main>
            <article id="mainimage">
                <!-- 메인 이미지 -->
                <img src="images/mainImage.png" id="mainimg">
            </article>
            <article id="mainboard">
                <section id="imgsection" class="mainsection">
                    <!-- 이미지 -->
                    <img src="images/section1.jpg" width="100%">
                </section>
                <section id="boardsection" class="mainsection">
                    <!-- 최근 게시글 미리보기 리스트 -->
                    <table>
                        <tr>
                            <th>최근 게시글</th>
                        </tr>
                        <tr>
                            <td><a href="#">css 기초 다지기1</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">css 기초 다지기2</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">css 기초 다지기3</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">css 기초 다지기4</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">css 기초 다지기5</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">css 기초 다지기6</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">css 기초 다지기7</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">css 기초 다지기8</a></td>
                        </tr>
                    </table>
                </section>
            </article>
        </main>
        <footer>
            <div id="foot">
                <!-- 이름, 연락처, 주소, 이메일 -->
                <ul>
                    <li>이름: 김준일</li>
                    <li>연락처: 010-9988-1916</li>
                    <li>주소: 부산 동래구 명륜로</li>
                    <li>이메일: skjil1218@kakao.com</li>
                </ul>
            </div>
        </footer>
    </div>
</body>
</html>