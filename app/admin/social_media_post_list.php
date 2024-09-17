<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

<?php
// Database connection
$conn = $pdo->open();
$stmt = $conn->prepare("SELECT * FROM social_post");
$stmt->execute();

// Fetch all rows as an associative array
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <?php include 'includes/navbar.php'; ?>
        <?php include 'includes/menubar.php'; ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Category
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li>Products</li>
                    <li class="active">Category</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
                <?php
                if (isset($_SESSION['error'])) {
                    echo "
            <div class='alert alert-danger alert-dismissible'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4><i class='icon fa fa-warning'></i> Error!</h4>
              " . $_SESSION['error'] . "
            </div>
          ";
                    unset($_SESSION['error']);
                }
                if (isset($_SESSION['success'])) {
                    echo "
            <div class='alert alert-success alert-dismissible'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4><i class='icon fa fa-check'></i> Success!</h4>
              " . $_SESSION['success'] . "
            </div>
          ";
                    unset($_SESSION['success']);
                }
                ?>
                <div class="row">
                    <div class="col-xs-12">
                    <div class="container mt-5">
        <h2 class="mb-4">Post List</h2>

        <!-- Display posts in a Bootstrap card list -->
        <?php if ($rows): ?>
            <div class="row">
                <?php foreach ($rows as $row) { ?>
                    <div class="row"></div>
                    <div class="col-md-6 mb-4">
                        <div class="card h-100">
                            <!-- Display the image if it exists -->
                            <?php if (!empty($row['image'])): ?>
                                <img src="<?php echo $row['image']; ?>" class="card-img-top" ?>
                            <?php endif; ?>
                            <div class="card-footer text-muted">
                                Posted on: <?php echo date('F j, Y', strtotime($row['created_at'])); ?>
                            </div>
                            <div class="card-body">
                                <p class="card-text"><?php echo substr($row['content'], 10, 300) . '...'; ?></p>
                                <a href="view_post.php?id=<?php echo $row['id']; ?>" class="btn btn-primary"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="view_post.php?id=<?php echo $row['id']; ?>" class="btn btn-primary"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <a href="view_post.php?id=<?php echo $row['id']; ?>" class="btn btn-primary"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                <a href="view_post.php?id=<?php echo $row['id']; ?>" class="btn btn-primary"><i class="fa fa-twitter" aria-hidden="true"></i></i></a>
                            </div>
                            
                        </div>
                    </div>
                    </div>
                <?php }; ?>
            
        <?php else: ?>
            <p>No posts found.</p>
        <?php endif; ?>

        <!-- Close database connection -->
        <?php 	$pdo->close(); ?>
    </div>

                    </div>
                </div>
            </section>

        </div>
        <?php include 'includes/footer.php'; ?>
        <?php include 'includes/event_approve_modal.php'; ?>
        <?php include 'includes/event_reject.php'; ?>

    </div>
    <!-- ./wrapper -->

    <?php include 'includes/scripts.php'; ?>
    <script>
        $(function () {
            $(document).on('click', '.approve', function (e) {
                e.preventDefault();
                $('#approve').modal('show');
                var id = $(this).data('id');
                $('#event_id').val(id);
            });

            $(document).on('click', '.reject', function (e) {
                e.preventDefault();
                $('#reject').modal('show');
                var id = $(this).data('id');
                $('#event_id_2').val(id);
            });

            $(document).on('click', '.delete', function (e) {
                e.preventDefault();
                $('#delete').modal('show');
                var id = $(this).data('id');
                getRow(id);
            });

        });

        function getRow(id) {
            $.ajax({
                type: 'POST',
                url: 'category_row.php',
                data: {
                    id: id
                },
                dataType: 'json',
                success: function (response) {
                    $('.catid').val(response.id);
                    $('#edit_name').val(response.name);
                    $('.catname').html(response.name);
                }
            });
        }
    </script>
</body>

</html>