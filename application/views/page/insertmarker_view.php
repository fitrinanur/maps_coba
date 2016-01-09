<form role="form" action="<?php echo site_url("insertmarker/add_marker");?>" method='post'>
  <div class="form-group">
    <label for="exampleInputEmail1">Koordinat</label>
    <input type="text" class="form-control" id="exampleLongituteLatitude" placeholder="Example : -7.569125, 110.829693">
  </div>
  <div class="form-group">
    <label for="exampleInputNamaLokasi">Nama Lokasi</label>
    <input type="text" class="form-control" id="exampleNamaLokasi" placeholder="Example : Prambanan Temple">
  </div>
  <div class="form-group">
    <label for="exampleInputInfo"> Info</label>
    <input type="text" class="form-control" id="exampleNamaLokasi" placeholder="Example : Prambanan Temple">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">Icon input</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">Example block-level help text here.</p>
  </div>
  <div class="form-group">
    <label for="exampleInputFile">File input</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">Example block-level help text here.</p>
  </div>
  <button type="submit" class="btn btn-primary" > Submit</button>
</form>