(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoverycontrolconfig_control_panel

type t = private {
  arn : string prop;
  cluster_arn : string prop;
  default_control_panel : bool prop;
  id : string prop;
  name : string prop;
  routing_control_count : float prop;
  status : string prop;
}

val aws_route53recoverycontrolconfig_control_panel :
  ?id:string prop ->
  cluster_arn:string prop ->
  name:string prop ->
  string ->
  t
