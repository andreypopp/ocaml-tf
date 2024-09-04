(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_service_discovery_private_dns_namespace

val aws_service_discovery_private_dns_namespace :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  vpc:string prop ->
  unit ->
  aws_service_discovery_private_dns_namespace

val yojson_of_aws_service_discovery_private_dns_namespace :
  aws_service_discovery_private_dns_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hosted_zone : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  vpc:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  vpc:string prop ->
  string ->
  t Tf_core.resource
