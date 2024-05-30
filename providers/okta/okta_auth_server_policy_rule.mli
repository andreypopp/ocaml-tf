(** Creates an Authorization Server Policy Rule.
This resource allows you to create and configure an Authorization Server Policy Rule.
-> This resource is concurrency safe. However, when creating/updating/deleting
multiple rules belonging to a policy, the Terraform meta argument
['depends_on'](https://www.terraform.io/language/meta-arguments/depends_on)
should be added to each rule chaining them all in sequence. Base the sequence on
the 'priority' property in ascending value. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_auth_server_policy_rule

val okta_auth_server_policy_rule :
  ?access_token_lifetime_minutes:float prop ->
  ?group_blacklist:string prop list ->
  ?group_whitelist:string prop list ->
  ?id:string prop ->
  ?inline_hook_id:string prop ->
  ?refresh_token_lifetime_minutes:float prop ->
  ?refresh_token_window_minutes:float prop ->
  ?scope_whitelist:string prop list ->
  ?status:string prop ->
  ?type_:string prop ->
  ?user_blacklist:string prop list ->
  ?user_whitelist:string prop list ->
  auth_server_id:string prop ->
  grant_type_whitelist:string prop list ->
  name:string prop ->
  policy_id:string prop ->
  priority:float prop ->
  unit ->
  okta_auth_server_policy_rule

val yojson_of_okta_auth_server_policy_rule :
  okta_auth_server_policy_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_token_lifetime_minutes : float prop;
  auth_server_id : string prop;
  grant_type_whitelist : string list prop;
  group_blacklist : string list prop;
  group_whitelist : string list prop;
  id : string prop;
  inline_hook_id : string prop;
  name : string prop;
  policy_id : string prop;
  priority : float prop;
  refresh_token_lifetime_minutes : float prop;
  refresh_token_window_minutes : float prop;
  scope_whitelist : string list prop;
  status : string prop;
  system : bool prop;
  type_ : string prop;
  user_blacklist : string list prop;
  user_whitelist : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_token_lifetime_minutes:float prop ->
  ?group_blacklist:string prop list ->
  ?group_whitelist:string prop list ->
  ?id:string prop ->
  ?inline_hook_id:string prop ->
  ?refresh_token_lifetime_minutes:float prop ->
  ?refresh_token_window_minutes:float prop ->
  ?scope_whitelist:string prop list ->
  ?status:string prop ->
  ?type_:string prop ->
  ?user_blacklist:string prop list ->
  ?user_whitelist:string prop list ->
  auth_server_id:string prop ->
  grant_type_whitelist:string prop list ->
  name:string prop ->
  policy_id:string prop ->
  priority:float prop ->
  string ->
  t

val make :
  ?access_token_lifetime_minutes:float prop ->
  ?group_blacklist:string prop list ->
  ?group_whitelist:string prop list ->
  ?id:string prop ->
  ?inline_hook_id:string prop ->
  ?refresh_token_lifetime_minutes:float prop ->
  ?refresh_token_window_minutes:float prop ->
  ?scope_whitelist:string prop list ->
  ?status:string prop ->
  ?type_:string prop ->
  ?user_blacklist:string prop list ->
  ?user_whitelist:string prop list ->
  auth_server_id:string prop ->
  grant_type_whitelist:string prop list ->
  name:string prop ->
  policy_id:string prop ->
  priority:float prop ->
  string ->
  t Tf_core.resource
