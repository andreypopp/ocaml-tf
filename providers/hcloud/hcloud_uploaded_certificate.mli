(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_uploaded_certificate

val hcloud_uploaded_certificate :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  certificate:string prop ->
  name:string prop ->
  private_key:string prop ->
  unit ->
  hcloud_uploaded_certificate

val yojson_of_hcloud_uploaded_certificate :
  hcloud_uploaded_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate : string prop;
  created : string prop;
  domain_names : string list prop;
  fingerprint : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  not_valid_after : string prop;
  not_valid_before : string prop;
  private_key : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  certificate:string prop ->
  name:string prop ->
  private_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  certificate:string prop ->
  name:string prop ->
  private_key:string prop ->
  string ->
  t Tf_core.resource
