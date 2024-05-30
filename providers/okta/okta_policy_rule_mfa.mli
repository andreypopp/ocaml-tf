(** Creates an MFA Policy Rule. This resource allows you to create and configure an MFA Policy Rule. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type app_exclude

val app_exclude :
  ?id:string prop ->
  ?name:string prop ->
  type_:string prop ->
  unit ->
  app_exclude

type app_include

val app_include :
  ?id:string prop ->
  ?name:string prop ->
  type_:string prop ->
  unit ->
  app_include

type okta_policy_rule_mfa

val okta_policy_rule_mfa :
  ?enroll:string prop ->
  ?id:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  name:string prop ->
  app_exclude:app_exclude list ->
  app_include:app_include list ->
  unit ->
  okta_policy_rule_mfa

val yojson_of_okta_policy_rule_mfa : okta_policy_rule_mfa -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enroll : string prop;
  id : string prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  policy_id : string prop;
  priority : float prop;
  status : string prop;
  users_excluded : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enroll:string prop ->
  ?id:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  name:string prop ->
  app_exclude:app_exclude list ->
  app_include:app_include list ->
  string ->
  t

val make :
  ?enroll:string prop ->
  ?id:string prop ->
  ?network_connection:string prop ->
  ?network_excludes:string prop list ->
  ?network_includes:string prop list ->
  ?policy_id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  name:string prop ->
  app_exclude:app_exclude list ->
  app_include:app_include list ->
  string ->
  t Tf_core.resource
