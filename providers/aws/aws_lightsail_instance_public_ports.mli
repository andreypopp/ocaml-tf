(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type port_info

val port_info :
  ?cidr_list_aliases:string prop list ->
  ?cidrs:string prop list ->
  ?ipv6_cidrs:string prop list ->
  from_port:float prop ->
  protocol:string prop ->
  to_port:float prop ->
  unit ->
  port_info

type aws_lightsail_instance_public_ports

val aws_lightsail_instance_public_ports :
  ?id:string prop ->
  instance_name:string prop ->
  port_info:port_info list ->
  unit ->
  aws_lightsail_instance_public_ports

val yojson_of_aws_lightsail_instance_public_ports :
  aws_lightsail_instance_public_ports -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; instance_name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_name:string prop ->
  port_info:port_info list ->
  string ->
  t
