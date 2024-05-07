(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_cidr_collection

val aws_route53_cidr_collection :
  name:string prop -> unit -> aws_route53_cidr_collection

val yojson_of_aws_route53_cidr_collection :
  aws_route53_cidr_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module -> name:string prop -> string -> t

val make : name:string prop -> string -> t Tf_core.resource
