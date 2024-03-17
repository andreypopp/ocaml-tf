(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_snapshot__timeouts
type hcloud_snapshot

val hcloud_snapshot :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?timeouts:hcloud_snapshot__timeouts ->
  server_id:float ->
  string ->
  unit
