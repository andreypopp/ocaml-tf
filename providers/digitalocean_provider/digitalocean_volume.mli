(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_volume

val digitalocean_volume :
  ?description:string ->
  ?initial_filesystem_label:string ->
  ?initial_filesystem_type:string ->
  ?snapshot_id:string ->
  ?tags:string list ->
  name:string ->
  region:string ->
  size:float ->
  string ->
  unit
