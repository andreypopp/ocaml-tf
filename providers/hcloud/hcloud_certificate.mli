(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_certificate

val hcloud_certificate :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  certificate:string prop ->
  name:string prop ->
  private_key:string prop ->
  unit ->
  hcloud_certificate

val yojson_of_hcloud_certificate : hcloud_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate : string prop;
  created : string prop;
  domain_names : string list prop;
  fingerprint : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  not_valid_after : string prop;
  not_valid_before : string prop;
  private_key : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  certificate:string prop ->
  name:string prop ->
  private_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  certificate:string prop ->
  name:string prop ->
  private_key:string prop ->
  string ->
  t Tf_core.resource
