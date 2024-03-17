(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_uploaded_certificate

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

val hcloud_uploaded_certificate :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  certificate:string prop ->
  name:string prop ->
  private_key:string prop ->
  string ->
  t
