<?php
require __DIR__ . '\..\init.php';

$select_order = "SELECT category.name as categoryName, orders.id as orderID ,orders.check_in as StartDay ,orders.check_out as EndDay,orders.price as orderPrice ,rooms.name as roomName from `orders` JOIN category on orders.categoryId=category.id  JOIN `rooms` on orders.room_id=rooms.id";
$order_Selection = mysqli_query($conn, $select_order);

//delete
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $delete = "DELETE from `orders` where orders.id = $id";
    $delete_orders = mysqli_query($conn, $delete);
    header("location: /hotel/adminpanle/orders-list/order-list.php");
    exit();
}
?>


<main id="main" class="main">


    <section class="section">
        <div class="row">
            <div class="col-lg-12">

                <div class="card">
                    <div class="card-body">
                        <!-- <h1 class="display-5  text-info">Employee</h1>
                        <a>add</button> -->
                        <div class="d-flex mt-3 mb-3 border-bottom border-dark">
                            <h1 class="flex-grow-1  text-info mb-3">Orders</h1>

                        </div>
                        <!-- Table with stripped rows -->
                        <table class="table rowtable ">
                            <thead>
                                <tr>
                                    <th scope="col">RoomName</th>
                                    <th scope="col">RoomType</th>
                                    <th scope="col">Start Date</th>
                                    <th scope="col">End Date</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php foreach ($order_Selection as $data) { ?>

                                    <tr>
                                        <td><?php echo $data['roomName'] ?></td>
                                        <td><?php echo $data['categoryName'] ?></td>
                                        <td><?php echo $data['StartDay'] ?></td>
                                        <td><?php echo $data['EndDay'] ?></td>
                                        <td><?php echo $data['orderPrice'] ?><?php echo "$" ?></td>

                                        <td>
                                            <a class="btn btn-info" href=""><i class="bi bi-pencil-square"></i></a>
                                            <a class="btn btn-danger" href="/hotel/adminpanle/orders-list/order-list.php?delete=<?php echo $data['orderID'] ?>" onclick="return confirm('Are You Sure ? ')"><i class="bi bi-trash"></i></a>
                                        </td>
                                    </tr>
                                <?php } ?>

                            </tbody>

                        </table>
                        <!-- End Table with stripped rows -->

                    </div>
                </div>

            </div>
        </div>
    </section>

</main>


<?php
include '../includes/scripts.php';
?>