(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apprunner_vpc_connector

val aws_apprunner_vpc_connector :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  security_groups:string prop list ->
  subnets:string prop list ->
  vpc_connector_name:string prop ->
  unit ->
  aws_apprunner_vpc_connector

val yojson_of_aws_apprunner_vpc_connector :
  aws_apprunner_vpc_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  security_groups : string list prop;
  status : string prop;
  subnets : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_connector_name : string prop;
  vpc_connector_revision : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  security_groups:string prop list ->
  subnets:string prop list ->
  vpc_connector_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  security_groups:string prop list ->
  subnets:string prop list ->
  vpc_connector_name:string prop ->
  string ->
  t Tf_core.resource
