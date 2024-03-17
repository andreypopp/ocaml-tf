(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_uploaded_certificate

val hcloud_uploaded_certificate :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  certificate:string prop ->
  name:string prop ->
  private_key:string prop ->
  string ->
  unit
