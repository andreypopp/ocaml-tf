(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_target

val aws_ec2_traffic_mirror_target :
  ?description:string ->
  ?gateway_load_balancer_endpoint_id:string ->
  ?id:string ->
  ?network_interface_id:string ->
  ?network_load_balancer_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  string ->
  unit
