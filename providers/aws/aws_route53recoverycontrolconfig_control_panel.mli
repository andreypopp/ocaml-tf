(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53recoverycontrolconfig_control_panel

val aws_route53recoverycontrolconfig_control_panel :
  ?id:string prop ->
  cluster_arn:string prop ->
  name:string prop ->
  unit ->
  aws_route53recoverycontrolconfig_control_panel

val yojson_of_aws_route53recoverycontrolconfig_control_panel :
  aws_route53recoverycontrolconfig_control_panel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cluster_arn : string prop;
  default_control_panel : bool prop;
  id : string prop;
  name : string prop;
  routing_control_count : float prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_arn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_arn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
