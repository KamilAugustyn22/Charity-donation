<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 08/08/2022
  Time: 15:48
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
  <jsp:include page="header.jsp"/>
</header>

<section class="login-page">
  <h2>Zaloguj się</h2>
  <form method="post">
    <div class="form-group">
      <input type="text" name="username" placeholder="Nazwa użytkownika" />
    </div>
    <div class="form-group">
      <input type="password" name="password" placeholder="Hasło" />
      <a href="#" class="btn btn--small btn--without-border reset-password">Przypomnij hasło</a>
    </div>

    <div class="form-group form-group--buttons">
      <a href="/register" class="btn btn--without-border">Załóż konto</a>
      <button class="btn" type="submit">Zaloguj się</button>
    </div>
  </form>
</section>

<footer>
  <jsp:include page="footer.jsp"/>
</footer>
</body>
</html>
