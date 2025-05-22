# 🔁 Palindrome Checker Web Application

A simple and elegant **Java Servlet-based web application** that checks whether a given word or phrase is a **palindrome**. A palindrome reads the same forward and backward, ignoring spaces, punctuation, and case.

---

## 🚀 Features

- Check if a word or sentence is a **palindrome**.
- Supports phrases with punctuation and mixed casing.
- Displays result on the **same page** using JSP.
- Styled with **responsive and attractive CSS**.
- Built using **Java Servlets** and **JSP** (Jakarta EE).

---

## 🛠️ Requirements

- **Java JDK** 17 or higher  
- **Apache Tomcat** 10.x or 10.1.x (compatible with Jakarta EE 10)  
- **Eclipse IDE** (or any Java IDE with dynamic web project support)  
- **Jakarta Servlet API** version 6.0.0  
- **Web browser** (for testing UI)

---

## 📁 Project Structure

PalindromeCheckerWeb/

├── .classpath

├── .project

├── .settings/

│ └── org.eclipse.jdt.core.prefs

├── build/

├── src/

│ └── main/

│ └── java/

│ └── com/

│ └── example/

│ └── palindrome/

│ └── PalindromeServlet.java

├── Webapp/

│ ├── index.jsp

│ └── WEB-INF/

│ ├── web.xml

│ └── lib/                                            <-- (Only if needed)

└── README.md

---

## 🌐 How It Works

- User enters a phrase in the text input.
- On submit, the form sends a POST request to `/checkPalindrome`.
- `PalindromeServlet.java` checks if the input is a palindrome.
- The result is forwarded back to `index.jsp` and shown on the **same page**.

---

## 🎨 UI Snapshot (Design Overview)

- Soft blue gradient background.
- Centered card-style form.
- Clean typography with responsive design.
- Dynamic result messages with color-coded success/failure.

---

## ▶️ Running the Project

1. Open the project in **Eclipse**.
2. Make sure Apache **Tomcat 10.1+** is configured.
3. Right-click project > `Run As` > `Run on Server`.
4. Access the app in your browser at:  
   `http://localhost:8080/PalindromeCheckerWeb/`

---

## 🔍 Example Inputs

Try testing the following examples:

| Input                     | Result               |
|--------------------------|----------------------|
| `madam`                  | ✅ Palindrome         |
| `nurses run`             | ✅ Palindrome         |
| `Was it a car or a cat I saw?` | ✅ Palindrome |
| `hello`                  | ❌ Not a palindrome   |
| `12321`                  | ✅ Palindrome         |

---

## 🙋‍♀️ Author

Developed by **Rohini363**  
GitHub: [github.com/Rohini363/PalindromeChecker](https://github.com/Rohini363/PalindromeChecker)

