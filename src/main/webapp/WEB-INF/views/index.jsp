<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Management App</title>
    <!-- Tailwind CSS via CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

    <!-- Header -->
    <header class="bg-blue-600 text-white shadow-md">
        <div class="container mx-auto px-6 py-4 flex justify-between items-center">
            <h1 class="text-2xl font-bold">Product Management</h1>
            <nav class="space-x-4">
                <a href="${pageContext.request.contextPath}/products"
                   class="hover:underline">Products</a>
                <a href="${pageContext.request.contextPath}/products/add"
                   class="hover:underline">Add Product</a>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="flex-1 container mx-auto px-6 py-8">
        <div class="bg-white shadow-lg rounded-xl p-6">
            <h2 class="text-xl font-semibold mb-4">Welcome 👋</h2>
            <p class="text-gray-700 mb-6">
                This is a simple <b>Product Management Application</b> built using
                <span class="font-semibold">Spring MVC</span>,
                <span class="font-semibold">Spring JDBC</span>,
                and <span class="font-semibold">Tailwind CSS</span>.
            </p>

            <div class="grid md:grid-cols-2 gap-6">
                <!-- Card 1 -->
                <div class="p-6 border rounded-lg shadow hover:shadow-lg transition bg-gray-50">
                    <h3 class="text-lg font-bold mb-2">View Products</h3>
                    <p class="text-gray-600 mb-4">See all products available in the system.</p>
                    <a href="${pageContext.request.contextPath}/products"
                       class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700">
                       Go to Products
                    </a>
                </div>

                <!-- Card 2 -->
                <div class="p-6 border rounded-lg shadow hover:shadow-lg transition bg-gray-50">
                    <h3 class="text-lg font-bold mb-2">Add New Product</h3>
                    <p class="text-gray-600 mb-4">Add a new product with name, price, and quantity.</p>
                    <a href="${pageContext.request.contextPath}/products/add"
                       class="bg-green-600 text-white px-4 py-2 rounded-lg hover:bg-green-700">
                       Add Product
                    </a>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-800 text-gray-300 py-4 text-center">
        <p>&copy; 2025 Product Management App | Built with Spring MVC + JDBC + Tailwind</p>
    </footer>

</body>
</html>
