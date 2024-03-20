(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificates = {
  certificate : string prop;  (** certificate *)
  created : string prop;  (** created *)
  domain_names : string prop list;  (** domain_names *)
  fingerprint : string prop;  (** fingerprint *)
  id : float prop;  (** id *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  not_valid_after : string prop;  (** not_valid_after *)
  not_valid_before : string prop;  (** not_valid_before *)
  type_ : string prop; [@key "type"]  (** type *)
}

type hcloud_certificates

val hcloud_certificates :
  ?id:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_certificates

val yojson_of_hcloud_certificates : hcloud_certificates -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificates : certificates list prop;
  id : string prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
