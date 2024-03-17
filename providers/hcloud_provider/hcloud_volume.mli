(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_volume

val hcloud_volume :
  ?automount:bool ->
  ?delete_protection:bool ->
  ?format:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?server_id:float ->
  name:string ->
  size:float ->
  string ->
  unit
