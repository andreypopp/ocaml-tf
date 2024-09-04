(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_traffic_mirror_target

val aws_ec2_traffic_mirror_target :
  ?description:string prop ->
  ?gateway_load_balancer_endpoint_id:string prop ->
  ?id:string prop ->
  ?network_interface_id:string prop ->
  ?network_load_balancer_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  unit ->
  aws_ec2_traffic_mirror_target

val yojson_of_aws_ec2_traffic_mirror_target :
  aws_ec2_traffic_mirror_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  gateway_load_balancer_endpoint_id : string prop;
  id : string prop;
  network_interface_id : string prop;
  network_load_balancer_arn : string prop;
  owner_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?gateway_load_balancer_endpoint_id:string prop ->
  ?id:string prop ->
  ?network_interface_id:string prop ->
  ?network_load_balancer_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?description:string prop ->
  ?gateway_load_balancer_endpoint_id:string prop ->
  ?id:string prop ->
  ?network_interface_id:string prop ->
  ?network_load_balancer_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
