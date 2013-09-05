<form action="[[~[[*id]]]]" method="post" class="form-horizontal">
	<div class="control-group[[+error.username:notempty=` error`]]">
		<label class="control-label">[[%ha.username]]</label>
		<div class="controls">
			<input type="text" name="username" value="[[+username]]" />
			<span class="help-inline">[[+error.username]]</span>
		</div>
	</div>
	
	<div class="control-group[[+error.fullname:notempty=` error`]]">
		<label class="control-label">[[%ha.fullname]]</label>
		<div class="controls">
			<input type="text" name="fullname" value="[[+fullname]]" />
			<span class="help-inline">[[+error.fullname]]</span>
		</div>
	</div>
	
	<div class="control-group[[+error.email:notempty=` error`]]">
		<label class="control-label">[[%ha.email]]</label>
		<div class="controls">
			<input type="text" name="email" value="[[+email]]" />
			<span class="help-inline">[[+error.email]]</span>
		</div>
	</div>
	<input type="hidden" name="hauth_action" value="updateProfile" />
	<div class="form-actions">
		<button type="submit" class="btn btn-primary">[[%ha.updateProfile]]</button>
	</div>
</form>
[[+success:is=`1`:then=`<div class="alert alert-block">[[%ha.profile_update_success]]</div>`]]
[[+success:is=`0`:then=`<div class="alert alert-block alert-error">[[%ha.profile_update_error]] [[+error.message]]</div>`]]