(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoverycontrolconfig_routing_control

type t = private {
  arn : string prop;
  cluster_arn : string prop;
  control_panel_arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val aws_route53recoverycontrolconfig_routing_control :
  ?control_panel_arn:string prop ->
  ?id:string prop ->
  cluster_arn:string prop ->
  name:string prop ->
  string ->
  t
