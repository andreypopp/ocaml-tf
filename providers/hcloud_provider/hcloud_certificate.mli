(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_certificate

val hcloud_certificate :
  ?labels:(string * string) list ->
  certificate:string ->
  name:string ->
  private_key:string ->
  string ->
  unit
