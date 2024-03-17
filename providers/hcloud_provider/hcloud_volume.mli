(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_volume

val hcloud_volume :
  ?automount:bool prop ->
  ?delete_protection:bool prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?server_id:float prop ->
  name:string prop ->
  size:float prop ->
  string ->
  unit
