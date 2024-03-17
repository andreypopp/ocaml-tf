(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_floating_ip

val hcloud_floating_ip :
  ?delete_protection:bool prop ->
  ?description:string prop ->
  ?home_location:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?server_id:float prop ->
  type_:string prop ->
  string ->
  unit
