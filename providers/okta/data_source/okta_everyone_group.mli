(** Get the `Everyone` group from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_everyone_group

val okta_everyone_group :
  ?id:string prop ->
  ?include_users:bool prop ->
  unit ->
  okta_everyone_group

val yojson_of_okta_everyone_group : okta_everyone_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  include_users : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_users:bool prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?include_users:bool prop ->
  string ->
  t Tf_core.resource
