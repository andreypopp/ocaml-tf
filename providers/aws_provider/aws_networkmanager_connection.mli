(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_connection__timeouts
type aws_networkmanager_connection

val aws_networkmanager_connection :
  ?connected_link_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?link_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_connection__timeouts ->
  connected_device_id:string prop ->
  device_id:string prop ->
  global_network_id:string prop ->
  string ->
  unit
