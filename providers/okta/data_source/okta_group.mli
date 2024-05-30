(** Get a group from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_group

val okta_group :
  ?delay_read_seconds:string prop ->
  ?id:string prop ->
  ?include_users:bool prop ->
  ?name:string prop ->
  ?type_:string prop ->
  unit ->
  okta_group

val yojson_of_okta_group : okta_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  delay_read_seconds : string prop;
  description : string prop;
  id : string prop;
  include_users : bool prop;
  name : string prop;
  type_ : string prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?delay_read_seconds:string prop ->
  ?id:string prop ->
  ?include_users:bool prop ->
  ?name:string prop ->
  ?type_:string prop ->
  string ->
  t

val make :
  ?delay_read_seconds:string prop ->
  ?id:string prop ->
  ?include_users:bool prop ->
  ?name:string prop ->
  ?type_:string prop ->
  string ->
  t Tf_core.resource
