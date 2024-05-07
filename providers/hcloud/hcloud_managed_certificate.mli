(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_managed_certificate

val hcloud_managed_certificate :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  domain_names:string prop list ->
  name:string prop ->
  unit ->
  hcloud_managed_certificate

val yojson_of_hcloud_managed_certificate :
  hcloud_managed_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate : string prop;
  created : string prop;
  domain_names : string list prop;
  fingerprint : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  not_valid_after : string prop;
  not_valid_before : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  domain_names:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  domain_names:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
