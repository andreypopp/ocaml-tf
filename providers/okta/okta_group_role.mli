(** Assigns Admin roles to Okta Groups. This resource allows you to assign Okta administrator roles to Okta Groups. This resource provides a one-to-one interface between the Okta group and the admin role. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_group_role

val okta_group_role :
  ?disable_notifications:bool prop ->
  ?id:string prop ->
  ?target_app_list:string prop list ->
  ?target_group_list:string prop list ->
  group_id:string prop ->
  role_type:string prop ->
  unit ->
  okta_group_role

val yojson_of_okta_group_role : okta_group_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disable_notifications : bool prop;
  group_id : string prop;
  id : string prop;
  role_type : string prop;
  target_app_list : string list prop;
  target_group_list : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_notifications:bool prop ->
  ?id:string prop ->
  ?target_app_list:string prop list ->
  ?target_group_list:string prop list ->
  group_id:string prop ->
  role_type:string prop ->
  string ->
  t

val make :
  ?disable_notifications:bool prop ->
  ?id:string prop ->
  ?target_app_list:string prop list ->
  ?target_group_list:string prop list ->
  group_id:string prop ->
  role_type:string prop ->
  string ->
  t Tf_core.resource
