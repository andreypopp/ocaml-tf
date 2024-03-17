(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_volume_attachment

val hcloud_volume_attachment :
  ?automount:bool prop ->
  ?id:string prop ->
  server_id:float prop ->
  volume_id:float prop ->
  string ->
  unit
