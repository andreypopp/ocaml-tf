(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoverycontrolconfig_cluster__cluster_endpoints = {
  endpoint : string prop;  (** endpoint *)
  region : string prop;  (** region *)
}

type aws_route53recoverycontrolconfig_cluster

val aws_route53recoverycontrolconfig_cluster :
  ?id:string prop -> name:string prop -> string -> unit
