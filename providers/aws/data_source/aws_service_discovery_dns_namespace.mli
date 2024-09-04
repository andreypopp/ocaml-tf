(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_service_discovery_dns_namespace

val aws_service_discovery_dns_namespace :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_service_discovery_dns_namespace

val yojson_of_aws_service_discovery_dns_namespace :
  aws_service_discovery_dns_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hosted_zone : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
