(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_connect_attachment__options
type aws_networkmanager_connect_attachment__timeouts
type aws_networkmanager_connect_attachment

val aws_networkmanager_connect_attachment :
  ?tags:(string * string) list ->
  ?timeouts:aws_networkmanager_connect_attachment__timeouts ->
  core_network_id:string ->
  edge_location:string ->
  transport_attachment_id:string ->
  options:aws_networkmanager_connect_attachment__options list ->
  string ->
  unit
