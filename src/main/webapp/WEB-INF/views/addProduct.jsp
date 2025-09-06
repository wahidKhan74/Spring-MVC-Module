<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title><c:choose><c:when test="${product.id > 0}">Edit Product</c:when><c:otherwise>Add Product</c:otherwise></c:choose></title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-8">
    <div class="max-w-lg mx-auto bg-white shadow-md rounded-xl p-6">
        <h2 class="text-xl font-bold mb-4"><c:choose><c:when test="${product.id > 0}">Edit Product</c:when><c:otherwise>Add New Product</c:otherwise></c:choose></h2>

        <form action="${pageContext.request.contextPath}/products/${product.id > 0 ? 'update' : 'add'}" method="post" class="space-y-4">
            <c:if test="${product.id > 0}">
                <input type="hidden" name="id" value="${product.id}" />
            </c:if>

            <div>
                <label class="block text-gray-700">Name</label>
                <input type="text" name="name" value="${product.name}" required class="w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            </div>

            <div>
                <label class="block text-gray-700">Price</label>
                <input type="number" step="0.01" name="price" value="${product.price}" required class="w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            </div>

            <div>
                <label class="block text-gray-700">Quantity</label>
                <input type="number" name="quantity" value="${product.quantity}" required class="w-full border rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            </div>

            <div class="flex justify-between">
                <a href="${pageContext.request.contextPath}/products" class="px-4 py-2 rounded-lg border">Cancel</a>
                <input type="submit" value="${product.id > 0 ? 'Update' : 'Save'}" class="bg-green-600 text-white px-4 py-2 rounded-lg hover:bg-green-700"/>
            </div>
        </form>
    </div>
</body>
</html>
