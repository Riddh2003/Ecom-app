<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Product</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-black text-white flex items-center justify-center h-screen">
	<div class="w-full max-w-md">
		<h1 class="text-4xl font-bold text-center text-pink-500 mb-8">ADD NEW PRODUCT</h1>
		<form action="saveproduct" method="post" enctype="multipart/form-data" class="border-2 rounded shadow-md rounded px-8 pt-6 pb-8 mb-4">
			<div class="mb-4">
				<label class="block text-gray-300 text-sm font-bold mb-2" for="productName">ProductName</label>
				<input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="productName" type="text" name="productName">
			</div>
			<div class="mb-4">
				<label class="block text-gray-300 text-sm font-bold mb-2" for="category">Category</label>
				<input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="category" type="text" name="category">
			</div>
			<div class="mb-4">
				<label class="block text-gray-300 text-sm font-bold mb-2" for="price">Price</label>
				<input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="price" type="number" name="price">
			</div>
			<div class="mb-4">
				<label class="block text-gray-300 text-sm font-bold mb-2" for="qty">Qty</label>
				<input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="qty" type="number" name="qty">
			</div>
			<div class="mb-4">
				<label class="block text-gray-300 text-sm font-bold mb-2" for="productImage">Product Image</label>
				<input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="productImage" type="file" name="productImage">
			</div>
			<div class="flex items-center justify-between">
				<button class="bg-gradient-to-r from-pink-500 to-orange-500 hover:from-pink-600 hover:to-orange-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="submit">ADD PRODUCT</button>
			</div>
		</form>
	</div>
</body>
</html>
