<!-- LOGIN MODAL START -->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  			<div class="modal-dialog" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        				<h4 class="modal-title" id="myModalLabel">Welcome Java HotSpotter</h4>
      				</div>
      				<div class="modal-body">
        				<div class="input-group">
  							<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></span>
  							<input type="text" value="arvind2341989@hotmail.com" id="p1" class="form-control" placeholder="Email Address" aria-describedby="basic-addon1">
						</div>
						<br/>
						<div class="input-group">
  							<span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
  							<input type="password" value="12345" id="p2" class="form-control" placeholder="Password" aria-describedby="basic-addon2">
						</div>
      				</div>
      				<div class="modal-footer">
      					<p>
      						<button type="button" class="btn btn-primary btn-sm btn-block" id="loginButton">Login</button>
      					</p>
      					<br/>
      					<p class="text-center" id="loginResults"></p>
      				</div>
    			</div>
  			</div>
		</div>
		<!-- LOGIN MODAL END -->
		
		<!-- REGISTER MODAL START -->
		<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  			<div class="modal-dialog" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        				<h4 class="modal-title" id="myModalLabel">Become a Java HotSpotter</h4>
      				</div>
      				<div class="modal-body">
        				<div class="input-group">
  							<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
  							<input type="text" id="firstName" class="form-control" placeholder="First Name" aria-describedby="basic-addon1">
						</div>
						<br/>
						<div class="input-group">
  							<span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
  							<input type="text" id="lastName" class="form-control" placeholder="Last Name" aria-describedby="basic-addon2">
						</div>
						<br/>
						<div class="input-group">
  							<span class="input-group-addon" id="basic-addon3"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></span>
  							<input type="text" id="emailAddress" class="form-control" placeholder="EMail Address" aria-describedby="basic-addon3">
						</div>
						<br/>
						<div class="input-group">
  							<span class="input-group-addon" id="basic-addon4"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
  							<input type="password" id="password" class="form-control" placeholder="Password" aria-describedby="basic-addon4">
						</div>
						<br/>
						<div class="input-group">
  							<span class="input-group-addon" id="basic-addon5"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
  							<input type="password" class="form-control" placeholder="Confirm Password" aria-describedby="basic-addon5">
						</div>
      				</div>
      				<div class="modal-footer">
      					<p>
        					<button type="button" class="btn btn-primary btn-sm btn-block" id="registerButton">Register</button>
        				</p>
        				<br/>
        				<p class="text-center" id="registrationResults"></p>
      				</div>
    			</div>
  			</div>
		</div>
		<!-- REGISTER MODAL END -->