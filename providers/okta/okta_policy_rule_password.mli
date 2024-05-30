(** Creates a Password Policy Rule. This resource allows you to create and configure a Password Policy Rule. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_rule_password

val okta_policy_rule_password :
  ?id:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?password_change:string prop ->
  ?password_reset:string prop ->
  ?password_unlock:string prop ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  name:string prop ->
  unit ->
  okta_policy_rule_password

val yojson_of_okta_policy_rule_password :
  okta_policy_rule_password -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  password_change : string prop;
  password_reset : string prop;
  password_unlock : string prop;
  policy_id : string prop;
  priority : float prop;
  status : string prop;
  users_excluded : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?password_change:string prop ->
  ?password_reset:string prop ->
  ?password_unlock:string prop ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?password_change:string prop ->
  ?password_reset:string prop ->
  ?password_unlock:string prop ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
