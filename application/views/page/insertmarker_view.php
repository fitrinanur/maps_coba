<?php
    if(!empty($status)){
        echo "
           <div class='alert alert-success'> $status</div>
        ";
    }
?>
<form role="form" enctype="multipart/form-data" action="<?php echo site_url("insertmarker/add_marker"); ?>"
      method='post'>
    <div class="form-group">
        <label for="exampleInputEmail1">Koordinat</label>
        <input type="text" class="form-control" name="lokasi" required
               placeholder="Example : -7.569125, 110.829693">
    </div>
    <div class="form-group">
        <label for="exampleInputNamaLokasi">Nama Lokasi</label>
        <input type="text" class="form-control" name="nama_lokasi" required
               placeholder="Example : Prambanan Temple">
    </div>
    <div class="form-group">
        <label for="exampleInputInfo"> Info</label>
        <textarea class="form-control" name="info" required></textarea>
    </div>
    <div class="form-group">
        <label for="exampleInputFile">Icon input</label>
        <input type="file" name="icon" required>
        <p class="help-block">icon untuk map.</p>
    </div>
    <div class="form-group">
        <label for="exampleInputFile">Image Upload</label>
        <input type="file" name="image" required>
        <p class="help-block">upload image.</p>
    </div>
    <button type="submit" class="btn btn-primary"> Submit</button>
</form>