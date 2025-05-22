<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Palindrome Checker</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e3f2fd, #bbdefb);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 80px auto;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            padding: 30px;
            text-align: center;
        }

        h1 {
            color: #0d47a1;
            margin-bottom: 20px;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #90caf9;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        input[type="submit"] {
            background-color: #2196f3;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #1976d2;
        }

        .result {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }

        .success {
            color: green;
        }

        .fail {
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Palindrome Checker</h1>
    <form action="checkPalindrome" method="post">
        <input type="text" name="text" placeholder="Enter a word or phrase..." required />
        <input type="submit" value="Check" />
    </form>

    <%
        String result = (String) request.getAttribute("result");
        if (result != null) {
    %>
        <div class="result <%= result.contains("not") ? "fail" : "success" %>">
            <%= result %>
        </div>
    <%
        }
    %>
</div>
</body>
</html>
