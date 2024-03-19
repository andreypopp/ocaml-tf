(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type aws_network_interface_sg_attachment

val aws_network_interface_sg_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  network_interface_id:string prop ->
  security_group_id:string prop ->
  unit ->
  aws_network_interface_sg_attachment

val yojson_of_aws_network_interface_sg_attachment :
  aws_network_interface_sg_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  network_interface_id : string prop;
  security_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  network_interface_id:string prop ->
  security_group_id:string prop ->
  string ->
  t
