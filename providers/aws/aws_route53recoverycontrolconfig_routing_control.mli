(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_route53recoverycontrolconfig_routing_control

val aws_route53recoverycontrolconfig_routing_control :
  ?control_panel_arn:string prop ->
  ?id:string prop ->
  cluster_arn:string prop ->
  name:string prop ->
  unit ->
  aws_route53recoverycontrolconfig_routing_control

val yojson_of_aws_route53recoverycontrolconfig_routing_control :
  aws_route53recoverycontrolconfig_routing_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cluster_arn : string prop;
  control_panel_arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?control_panel_arn:string prop ->
  ?id:string prop ->
  cluster_arn:string prop ->
  name:string prop ->
  string ->
  t
