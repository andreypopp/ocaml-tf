(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_interface_sg_attachment__timeouts
type aws_network_interface_sg_attachment

type t = private {
  id : string prop;
  network_interface_id : string prop;
  security_group_id : string prop;
}

val aws_network_interface_sg_attachment :
  ?id:string prop ->
  ?timeouts:aws_network_interface_sg_attachment__timeouts ->
  network_interface_id:string prop ->
  security_group_id:string prop ->
  string ->
  t
