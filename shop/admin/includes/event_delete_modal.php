<!-- Edit -->
<div class="modal fade" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>DELETE</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="event_delete.php">
                <input type="hidden" id="event_id_3" class="event_id" name="id_3">
                <h3>Are you sure you want to delete this event? click on Delete button</h3>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-success btn-flat" name="delete"><i class="fa fa-check-square-o"></i> Delete</button>
              </form>
            </div>
        </div>
    </div>
</div>

