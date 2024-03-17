(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoverycontrolconfig_cluster__cluster_endpoints = {
  endpoint : string;  (** endpoint *)
  region : string;  (** region *)
}

type aws_route53recoverycontrolconfig_cluster

val aws_route53recoverycontrolconfig_cluster :
  ?id:string -> name:string -> string -> unit
