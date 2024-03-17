(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_floating_ip

val hcloud_floating_ip :
  ?delete_protection:bool ->
  ?description:string ->
  ?home_location:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?name:string ->
  ?server_id:float ->
  type_:string ->
  string ->
  unit
