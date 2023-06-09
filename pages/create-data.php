<?php
include('../server/connection.php');
include('../includes/header.php');


if (isset($_POST['create_wine'])) {

    $winename = $_POST['winename'];
    $typewine = $_POST['typewine'];
    $quantitywine = $_POST['quantitywine'];
    $pricewine = $_POST['pricewine'];
    $description = $_POST['description'];
    $timestamp = time();
    $date_time = date("Y-m-d H:i:s", $timestamp);

    $query = "INSERT INTO wines VALUES ('','$winename','$typewine','$description','$quantitywine','$pricewine','$date_time','$date_time')";

    mysqli_query($conn, $query);

    header("location:inventory.php");
}


if (isset($_POST['create_location'])) {

    $name = $_POST['name_location'];
    $descriptionlocation = $_POST['description_location'];
    $timestamps = time();
    $datetime = date("Y-m-d H:i:s", $timestamps);

    $q = "INSERT INTO locations values ('','$name','$descriptionlocation','$datetime','$datetime')";
    mysqli_query($conn, $q);

    header("location:inventory.php");
}


?>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../styles/layout.css">
    <link rel="stylesheet" href="../styles/inventory.css">
    <title>Create Inventory Data</title>
</head>

<body>
    <div class="container my-5">
        <h3 class="text-center">Input your wines through the vault.</h3>
        <p class="text-center">Enter your finest vintage wines and manage your collection with ease through our secure Cellar Vault. Keep track of your wines and enjoy them with confidence.</p>

        <div class="cards">
            <!-- Tab -->
            <ul class="nav nav-tabs my-4 flex-wrap" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="wine-tab" data-bs-toggle="tab" data-bs-target="#wine" type="button" role="tab" aria-controls="wine" aria-selected="true">Wine</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="location-tab" data-bs-toggle="tab" data-bs-target="#location" type="button" role="tab" aria-controls="location" aria-selected="false">Location</button>
                </li>
            </ul>
            <!-- Tab -->
            <div class="tab-content" id="myTabContent">
                <!-- Wines Tab -->
                <div class="tab-pane fade show active" id="wine" role="tabpanel" aria-labelledby="wine-tab">
                    <form method="POST" class="tab-body">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input name="winename" type="text" class="form-control" id="name" placeholder="Product Name">
                        </div>
                        <div class="form-group">
                            <label for="type">Type</label>
                            <input name="typewine" type="text" class="form-control" id="type" placeholder="Wine Type">
                        </div>
                        <div class="form-group">
                            <label for="quantity">Quantity</label>
                            <input name="quantitywine" type="number" class="form-control" id="quantity" placeholder="e.g 10">
                        </div>
                        <div class="form-group">
                            <label for="price">Price</label>
                            <input name="pricewine" type="text" class="form-control" id="price" placeholder="e.g 35.55">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <textarea name="description" class="form-control" id="description"></textarea>
                        </div>
                        <div class="tab-footer mt-3 d-flex justify-content-end gap-2">
                            <button type="button" class="btn btn-secondary"><a href="inventory.php">Close</a></button>
                            <button name="create_wine" type="submit" class="btn btn-primary">Input</button>
                        </div>
                    </form>
                </div>
                <!-- Location Tab -->
                <div class="tab-pane fade" id="location" role="tabpanel" aria-labelledby="location-tab">
                    <table class="table table-stripped">
                        <form method="POST" class="tab-body">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input name="name_location" type="text" class="form-control" id="name" placeholder="e.g A5">
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea name="description_location" class="form-control" id="description" placeholder="e.g First shelf on right side"></textarea>
                            </div>
                            <div class="tab-footer mt-3 d-flex justify-content-end gap-2">
                                <button type="button" class="btn btn-secondary"><a href="inventory.php">Close</a></button>
                                <button name="create_location" type="submit" class="btn btn-primary">Input</button>
                            </div>
                        </form>
                </div>
            </div>
        </div>
        <script src="../script.js"></script>
        <!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>



</body>

</html>