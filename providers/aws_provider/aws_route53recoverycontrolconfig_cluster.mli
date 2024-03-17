(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoverycontrolconfig_cluster__cluster_endpoints = {
  endpoint : string;  (** endpoint *)
  region : string;  (** region *)
}
[@@deriving yojson_of]

type aws_route53recoverycontrolconfig_cluster

val aws_route53recoverycontrolconfig_cluster :
  name:string -> string -> unit
