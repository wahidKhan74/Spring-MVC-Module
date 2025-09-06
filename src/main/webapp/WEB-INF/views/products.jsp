<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Products</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 p-8">
    <div class="max-w-5xl mx-auto bg-white shadow-lg rounded-xl p-6">
        <div class="flex justify-between items-center mb-4">
            <h2 class="text-2xl font-bold">Product List</h2>
            <a href="${pageContext.request.contextPath}/products/add" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700">Add New Product</a>
        </div>

        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">ID</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Name</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Price</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Quantity</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    <c:forEach var="p" items="${products}">
                        <tr>
                            <td class="px-6 py-4 whitespace-nowrap">${p.id}</td>
                            <td class="px-6 py-4 whitespace-nowrap">${p.name}</td>
                            <td class="px-6 py-4 whitespace-nowrap">$${p.price}</td>
                            <td class="px-6 py-4 whitespace-nowrap">${p.quantity}</td>
                            <td class="px-6 py-4 whitespace-nowrap">
                                <a href="${pageContext.request.contextPath}/products/edit/${p.id}" class="text-indigo-600 hover:text-indigo-900 mr-2">Edit</a>
                                <a href="${pageContext.request.contextPath}/products/delete/${p.id}" class="text-red-600 hover:text-red-900" onclick="return confirm('Delete this product?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
