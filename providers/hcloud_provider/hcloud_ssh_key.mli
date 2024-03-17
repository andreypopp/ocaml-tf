(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_ssh_key

val hcloud_ssh_key :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  name:string prop ->
  public_key:string prop ->
  string ->
  unit
