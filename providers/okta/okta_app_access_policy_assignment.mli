(** Manages assignment of Access Policy to an Application *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_access_policy_assignment

val okta_app_access_policy_assignment :
  app_id:string prop ->
  policy_id:string prop ->
  unit ->
  okta_app_access_policy_assignment

val yojson_of_okta_app_access_policy_assignment :
  okta_app_access_policy_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  policy_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  app_id:string prop ->
  policy_id:string prop ->
  string ->
  t

val make :
  app_id:string prop ->
  policy_id:string prop ->
  string ->
  t Tf_core.resource
