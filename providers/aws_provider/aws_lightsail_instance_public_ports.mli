(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_instance_public_ports__port_info
type aws_lightsail_instance_public_ports
type t = private { id : string prop; instance_name : string prop }

val aws_lightsail_instance_public_ports :
  ?id:string prop ->
  instance_name:string prop ->
  port_info:aws_lightsail_instance_public_ports__port_info list ->
  string ->
  t
