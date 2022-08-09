<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 08/08/2022
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Document</title>
  <link rel="stylesheet" href="../../resources/css/style.css" />
</head>
<body>
<header>
  <nav class="container container--70">
    <ul class="nav--actions">
      <li><a href="/login">Zaloguj</a></li>
      <li class="highlighted"><a href="/register">Załóż konto</a></li>
    </ul>

    <ul>
      <li><a href="/" class="btn btn--without-border active">Start</a></li>
      <li><a href="#" class="btn btn--without-border">O co chodzi?</a></li>
      <li><a href="#" class="btn btn--without-border">O nas</a></li>
      <li><a href="#" class="btn btn--without-border">Fundacje i organizacje</a></li>
      <li><a href="#" class="btn btn--without-border">Kontakt</a></li>
    </ul>
  </nav>
</header>

<section class="login-page">
  <h2>Załóż konto</h2>
  <form:form modelAttribute="user">
    <div class="form-group">
      <form:input type="text" path="username" placeholder="Nazwa użytkownika" />
    </div>
    <div class="form-group">
      <form:password path="password" placeholder="Hasło" />
    </div>
    <div class="form-group">
      <input type="password" name="password2" placeholder="Powtórz hasło" />
    </div>

    <div class="form-group form-group--buttons">
      <a href="/login" class="btn btn--without-border">Zaloguj się</a>
      <input:button class="btn" type="submit">Załóż konto</input:button>
    </div>
  </form:form>
</section>

<footer>
 <jsp:include page="footer.jsp"/>
</footer>
</body>
</html>

