(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_snapshot__timeouts
type hcloud_snapshot

val hcloud_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:hcloud_snapshot__timeouts ->
  server_id:float prop ->
  string ->
  unit
