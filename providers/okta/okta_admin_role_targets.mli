(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_admin_role_targets

val okta_admin_role_targets :
  ?apps:string prop list ->
  ?groups:string prop list ->
  ?id:string prop ->
  role_type:string prop ->
  user_id:string prop ->
  unit ->
  okta_admin_role_targets

val yojson_of_okta_admin_role_targets :
  okta_admin_role_targets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  apps : string list prop;
  groups : string list prop;
  id : string prop;
  role_id : string prop;
  role_type : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?apps:string prop list ->
  ?groups:string prop list ->
  ?id:string prop ->
  role_type:string prop ->
  user_id:string prop ->
  string ->
  t

val make :
  ?apps:string prop list ->
  ?groups:string prop list ->
  ?id:string prop ->
  role_type:string prop ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
