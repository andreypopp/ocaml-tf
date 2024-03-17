(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_target

val aws_ec2_traffic_mirror_target :
  ?description:string prop ->
  ?gateway_load_balancer_endpoint_id:string prop ->
  ?id:string prop ->
  ?network_interface_id:string prop ->
  ?network_load_balancer_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  unit
