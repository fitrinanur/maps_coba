<div class="container">
		<div class="row">
		<div  class="col-md-5" id="section">
			<form action="<?php echo site_url("maps/dologin");?>" method="post"
					class="form-horizontal" accept-charset="utf-8" role="form">
						<div class="form-group">
						    <label for="inputUsername" class="col-sm-2 control-label"> Username</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control"
						      	id="inputCodePerumahan" placeholder="Code of Perumahan" name="username">
						    </div>
						</div>
						<div class="form-group">
						    <label for="inputPassword" class="col-sm-2 control-label"> Password</label>
						    <div class="col-sm-10">
						      <input type="password" class="form-control"
						      id="inputPerumahan" placeholder="Perumahan" name="password">
						    </div>
						</div>
						  <div class="form-group">
						    <div class="col-sm-offset-2 col-sm-10">
						      <button type="submit" class="btn btn-primary">LOGIN</button>
						    </div>
						  </div>
					</form>
		</div>
		</div>
	</div>