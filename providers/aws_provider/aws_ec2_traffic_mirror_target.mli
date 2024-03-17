(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_target

type t = private {
  arn : string prop;
  description : string prop;
  gateway_load_balancer_endpoint_id : string prop;
  id : string prop;
  network_interface_id : string prop;
  network_load_balancer_arn : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ec2_traffic_mirror_target :
  ?description:string prop ->
  ?gateway_load_balancer_endpoint_id:string prop ->
  ?id:string prop ->
  ?network_interface_id:string prop ->
  ?network_load_balancer_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
