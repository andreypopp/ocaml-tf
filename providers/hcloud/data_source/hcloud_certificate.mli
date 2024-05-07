(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_certificate

val hcloud_certificate :
  ?id:float prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_certificate

val yojson_of_hcloud_certificate : hcloud_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate : string prop;
  created : string prop;
  domain_names : string list prop;
  fingerprint : string prop;
  id : float prop;
  labels : (string * string) list prop;
  name : string prop;
  not_valid_after : string prop;
  not_valid_before : string prop;
  type_ : string prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:float prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
