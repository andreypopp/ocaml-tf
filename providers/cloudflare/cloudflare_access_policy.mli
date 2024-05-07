(** Provides a Cloudflare Access Policy resource. Access Policies are
used in conjunction with Access Applications to restrict access to
a particular resource.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type approval_group

val approval_group :
  ?email_addresses:string prop list ->
  ?email_list_uuid:string prop ->
  approvals_needed:float prop ->
  unit ->
  approval_group

type exclude__auth_context

val exclude__auth_context :
  ac_id:string prop ->
  id:string prop ->
  identity_provider_id:string prop ->
  unit ->
  exclude__auth_context

type exclude__azure

val exclude__azure :
  ?id:string prop list ->
  ?identity_provider_id:string prop ->
  unit ->
  exclude__azure

type exclude__external_evaluation

val exclude__external_evaluation :
  ?evaluate_url:string prop ->
  ?keys_url:string prop ->
  unit ->
  exclude__external_evaluation

type exclude__github

val exclude__github :
  ?identity_provider_id:string prop ->
  ?name:string prop ->
  ?teams:string prop list ->
  unit ->
  exclude__github

type exclude__gsuite

val exclude__gsuite :
  ?email:string prop list ->
  ?identity_provider_id:string prop ->
  unit ->
  exclude__gsuite

type exclude__okta

val exclude__okta :
  ?identity_provider_id:string prop ->
  ?name:string prop list ->
  unit ->
  exclude__okta

type exclude__saml

val exclude__saml :
  ?attribute_name:string prop ->
  ?attribute_value:string prop ->
  ?identity_provider_id:string prop ->
  unit ->
  exclude__saml

type exclude

val exclude :
  ?any_valid_service_token:bool prop ->
  ?auth_method:string prop ->
  ?certificate:bool prop ->
  ?common_name:string prop ->
  ?device_posture:string prop list ->
  ?email:string prop list ->
  ?email_domain:string prop list ->
  ?everyone:bool prop ->
  ?geo:string prop list ->
  ?group:string prop list ->
  ?ip:string prop list ->
  ?ip_list:string prop list ->
  ?login_method:string prop list ->
  ?service_token:string prop list ->
  ?auth_context:exclude__auth_context list ->
  ?azure:exclude__azure list ->
  ?external_evaluation:exclude__external_evaluation list ->
  ?github:exclude__github list ->
  ?gsuite:exclude__gsuite list ->
  ?okta:exclude__okta list ->
  ?saml:exclude__saml list ->
  unit ->
  exclude

type include__auth_context

val include__auth_context :
  ac_id:string prop ->
  id:string prop ->
  identity_provider_id:string prop ->
  unit ->
  include__auth_context

type include__azure

val include__azure :
  ?id:string prop list ->
  ?identity_provider_id:string prop ->
  unit ->
  include__azure

type include__external_evaluation

val include__external_evaluation :
  ?evaluate_url:string prop ->
  ?keys_url:string prop ->
  unit ->
  include__external_evaluation

type include__github

val include__github :
  ?identity_provider_id:string prop ->
  ?name:string prop ->
  ?teams:string prop list ->
  unit ->
  include__github

type include__gsuite

val include__gsuite :
  ?email:string prop list ->
  ?identity_provider_id:string prop ->
  unit ->
  include__gsuite

type include__okta

val include__okta :
  ?identity_provider_id:string prop ->
  ?name:string prop list ->
  unit ->
  include__okta

type include__saml

val include__saml :
  ?attribute_name:string prop ->
  ?attribute_value:string prop ->
  ?identity_provider_id:string prop ->
  unit ->
  include__saml

type include_

val include_ :
  ?any_valid_service_token:bool prop ->
  ?auth_method:string prop ->
  ?certificate:bool prop ->
  ?common_name:string prop ->
  ?device_posture:string prop list ->
  ?email:string prop list ->
  ?email_domain:string prop list ->
  ?everyone:bool prop ->
  ?geo:string prop list ->
  ?group:string prop list ->
  ?ip:string prop list ->
  ?ip_list:string prop list ->
  ?login_method:string prop list ->
  ?service_token:string prop list ->
  ?auth_context:include__auth_context list ->
  ?azure:include__azure list ->
  ?external_evaluation:include__external_evaluation list ->
  ?github:include__github list ->
  ?gsuite:include__gsuite list ->
  ?okta:include__okta list ->
  ?saml:include__saml list ->
  unit ->
  include_

type require__auth_context

val require__auth_context :
  ac_id:string prop ->
  id:string prop ->
  identity_provider_id:string prop ->
  unit ->
  require__auth_context

type require__azure

val require__azure :
  ?id:string prop list ->
  ?identity_provider_id:string prop ->
  unit ->
  require__azure

type require__external_evaluation

val require__external_evaluation :
  ?evaluate_url:string prop ->
  ?keys_url:string prop ->
  unit ->
  require__external_evaluation

type require__github

val require__github :
  ?identity_provider_id:string prop ->
  ?name:string prop ->
  ?teams:string prop list ->
  unit ->
  require__github

type require__gsuite

val require__gsuite :
  ?email:string prop list ->
  ?identity_provider_id:string prop ->
  unit ->
  require__gsuite

type require__okta

val require__okta :
  ?identity_provider_id:string prop ->
  ?name:string prop list ->
  unit ->
  require__okta

type require__saml

val require__saml :
  ?attribute_name:string prop ->
  ?attribute_value:string prop ->
  ?identity_provider_id:string prop ->
  unit ->
  require__saml

type require

val require :
  ?any_valid_service_token:bool prop ->
  ?auth_method:string prop ->
  ?certificate:bool prop ->
  ?common_name:string prop ->
  ?device_posture:string prop list ->
  ?email:string prop list ->
  ?email_domain:string prop list ->
  ?everyone:bool prop ->
  ?geo:string prop list ->
  ?group:string prop list ->
  ?ip:string prop list ->
  ?ip_list:string prop list ->
  ?login_method:string prop list ->
  ?service_token:string prop list ->
  ?auth_context:require__auth_context list ->
  ?azure:require__azure list ->
  ?external_evaluation:require__external_evaluation list ->
  ?github:require__github list ->
  ?gsuite:require__gsuite list ->
  ?okta:require__okta list ->
  ?saml:require__saml list ->
  unit ->
  require

type cloudflare_access_policy

val cloudflare_access_policy :
  ?account_id:string prop ->
  ?approval_required:bool prop ->
  ?id:string prop ->
  ?isolation_required:bool prop ->
  ?purpose_justification_prompt:string prop ->
  ?purpose_justification_required:bool prop ->
  ?session_duration:string prop ->
  ?zone_id:string prop ->
  ?approval_group:approval_group list ->
  ?exclude:exclude list ->
  ?require:require list ->
  application_id:string prop ->
  decision:string prop ->
  name:string prop ->
  precedence:float prop ->
  include_:include_ list ->
  unit ->
  cloudflare_access_policy

val yojson_of_cloudflare_access_policy :
  cloudflare_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  application_id : string prop;
  approval_required : bool prop;
  decision : string prop;
  id : string prop;
  isolation_required : bool prop;
  name : string prop;
  precedence : float prop;
  purpose_justification_prompt : string prop;
  purpose_justification_required : bool prop;
  session_duration : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?approval_required:bool prop ->
  ?id:string prop ->
  ?isolation_required:bool prop ->
  ?purpose_justification_prompt:string prop ->
  ?purpose_justification_required:bool prop ->
  ?session_duration:string prop ->
  ?zone_id:string prop ->
  ?approval_group:approval_group list ->
  ?exclude:exclude list ->
  ?require:require list ->
  application_id:string prop ->
  decision:string prop ->
  name:string prop ->
  precedence:float prop ->
  include_:include_ list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?approval_required:bool prop ->
  ?id:string prop ->
  ?isolation_required:bool prop ->
  ?purpose_justification_prompt:string prop ->
  ?purpose_justification_required:bool prop ->
  ?session_duration:string prop ->
  ?zone_id:string prop ->
  ?approval_group:approval_group list ->
  ?exclude:exclude list ->
  ?require:require list ->
  application_id:string prop ->
  decision:string prop ->
  name:string prop ->
  precedence:float prop ->
  include_:include_ list ->
  string ->
  t Tf_core.resource
