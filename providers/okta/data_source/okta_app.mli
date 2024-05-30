(** Get an application of any kind from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app

val okta_app :
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
  unit ->
  okta_app

val yojson_of_okta_app : okta_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_only : bool prop;
  groups : string list prop;
  id : string prop;
  label : string prop;
  label_prefix : string prop;
  links : string prop;
  name : string prop;
  skip_groups : bool prop;
  skip_users : bool prop;
  status : string prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
  string ->
  t

val make :
  ?active_only:bool prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?label_prefix:string prop ->
  ?skip_groups:bool prop ->
  ?skip_users:bool prop ->
  string ->
  t Tf_core.resource
