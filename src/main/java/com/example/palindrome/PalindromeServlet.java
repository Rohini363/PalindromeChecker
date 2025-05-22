package com.example.palindrome;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class PalindromeServlet extends HttpServlet {

    private boolean isPalindrome(String text) {
        String cleaned = text.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();
        int left = 0, right = cleaned.length() - 1;
        while (left < right) {
            if (cleaned.charAt(left) != cleaned.charAt(right)) {
                return false;
            }
            left++;
            right--;
        }
        return true;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String text = request.getParameter("text");
        boolean result = isPalindrome(text);

        String message = result
                ? "\"" + text + "\" is a palindrome!"
                : "\"" + text + "\" is not a palindrome.";

        request.setAttribute("result", message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward GET request to index.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

}
