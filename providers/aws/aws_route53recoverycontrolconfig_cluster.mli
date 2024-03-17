(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoverycontrolconfig_cluster__cluster_endpoints = {
  endpoint : string prop;  (** endpoint *)
  region : string prop;  (** region *)
}

type aws_route53recoverycontrolconfig_cluster

type t = private {
  arn : string prop;
  cluster_endpoints :
    aws_route53recoverycontrolconfig_cluster__cluster_endpoints list
    prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val aws_route53recoverycontrolconfig_cluster :
  ?id:string prop -> name:string prop -> string -> t
