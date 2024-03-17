(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_interface_sg_attachment__timeouts
type aws_network_interface_sg_attachment

val aws_network_interface_sg_attachment :
  ?id:string prop ->
  ?timeouts:aws_network_interface_sg_attachment__timeouts ->
  network_interface_id:string prop ->
  security_group_id:string prop ->
  string ->
  unit
