(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_floating_ip

val hcloud_floating_ip :
  ?delete_protection:bool ->
  ?description:string ->
  ?labels:(string * string) list ->
  type_:string ->
  string ->
  unit
