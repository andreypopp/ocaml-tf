(** Manages users relationships. Link value operations allow you to create relationships between primary and associated users. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_link_value

val okta_link_value :
  ?associated_user_ids:string prop list ->
  ?id:string prop ->
  primary_name:string prop ->
  primary_user_id:string prop ->
  unit ->
  okta_link_value

val yojson_of_okta_link_value : okta_link_value -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  associated_user_ids : string list prop;
  id : string prop;
  primary_name : string prop;
  primary_user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?associated_user_ids:string prop list ->
  ?id:string prop ->
  primary_name:string prop ->
  primary_user_id:string prop ->
  string ->
  t

val make :
  ?associated_user_ids:string prop list ->
  ?id:string prop ->
  primary_name:string prop ->
  primary_user_id:string prop ->
  string ->
  t Tf_core.resource
