(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_connect_attachment__options
type aws_networkmanager_connect_attachment__timeouts
type aws_networkmanager_connect_attachment

val aws_networkmanager_connect_attachment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_connect_attachment__timeouts ->
  core_network_id:string prop ->
  edge_location:string prop ->
  transport_attachment_id:string prop ->
  options:aws_networkmanager_connect_attachment__options list ->
  string ->
  unit
