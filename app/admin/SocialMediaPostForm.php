<?php include 'includes/session.php'; ?>

<?php
$where = '';
if (isset($_GET['category'])) {
  $catid = $_GET['category'];
  $where = 'category_id =' . $catid . ' AND';
}

?>
<?php include 'includes/header.php'; ?>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>


<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <?php include 'includes/navbar.php'; ?>
    <?php include 'includes/menubar.php'; ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          New Social Post
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li>Social</li>
          <li class="active">Social Post</li>
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
            <div class="box">

              <div class="box-body">

                <h2 class="mb-4">Create a New Post</h2>

                <form method="POST" id="postForm" enctype="multipart/form-data" action="social_media_insert.php">
                  <!-- Rich Text Area -->
                  <div class="mb-3">
                    <label for="postContent" class="form-label">Post Content</label>
                    <textarea class="form-control" id="postContent" name="postContent" rows="5" placeholder="Write something..."></textarea>
                  </div>
                  <div class="mb-3">
                    <label for="postTitle" class="form-label">Post Title</label>
                    <input type="text" class="form-control" id="postTitle" name="postTitle"  placeholder="Write Title"></input>
                  </div>

                  <!-- Photo Upload -->
                  <div class="mb-3">
                    <label for="postImage" class="form-label">Upload Photo</label>
                    <input class="form-control" type="file" id="postImage" name="postImage" accept="image/*">
                  </div>

                  <!-- Image Preview -->
                  <div class="mb-3">
                    <img id="imagePreview" class="img-preview" alt="Image Preview" />
                  </div>

                  <!-- Post Button -->
                  <button type="submit" name="post" class="btn btn-primary">Post</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>

    </div>
    <?php include 'includes/footer.php'; ?>

  </div>
  <!-- ./wrapper -->

  <?php include 'includes/scripts.php'; ?>

  <script>
    // Image Preview Function
    $('#postImage').change(function() {
      const file = this.files[0];
      if (file) {
        const reader = new FileReader();
        reader.onload = function(event) {
          $('#imagePreview').attr('src', event.target.result).show();
        };
        reader.readAsDataURL(file);
      }
    });

    // Form submission (you can handle it as per your server's requirements)
    
  </script>
  </script>
</body>

</html>