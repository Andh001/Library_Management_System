<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Search Book by </h1>
        <form action="${pageContext.request.contextPath}/LoadBooks" method="POST">
            <input type="text" name="search_name" value="" />
            <select name="SearchBooksBy">
            <option value="name">Name</option>
            <option value="publisher">Publisher</option>
            <option value="author">Author</option>
            </select>
            <input type="submit" value="Search" />
        </form>
        
    </body>
</html>
