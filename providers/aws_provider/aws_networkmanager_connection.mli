(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_connection__timeouts
type aws_networkmanager_connection

val aws_networkmanager_connection :
  ?connected_link_id:string ->
  ?description:string ->
  ?id:string ->
  ?link_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_networkmanager_connection__timeouts ->
  connected_device_id:string ->
  device_id:string ->
  global_network_id:string ->
  string ->
  unit
