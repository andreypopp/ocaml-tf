(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cluster_endpoints = {
  endpoint : string prop;  (** endpoint *)
  region : string prop;  (** region *)
}

[@@@deriving.end]

type aws_route53recoverycontrolconfig_cluster

val aws_route53recoverycontrolconfig_cluster :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_route53recoverycontrolconfig_cluster

val yojson_of_aws_route53recoverycontrolconfig_cluster :
  aws_route53recoverycontrolconfig_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cluster_endpoints : cluster_endpoints list prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
