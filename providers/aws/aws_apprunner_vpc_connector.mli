(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apprunner_vpc_connector

val aws_apprunner_vpc_connector :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  security_groups:string prop list ->
  subnets:string prop list ->
  vpc_connector_name:string prop ->
  unit ->
  aws_apprunner_vpc_connector

val yojson_of_aws_apprunner_vpc_connector :
  aws_apprunner_vpc_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  security_groups : string list prop;
  status : string prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_connector_name : string prop;
  vpc_connector_revision : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  security_groups:string prop list ->
  subnets:string prop list ->
  vpc_connector_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  security_groups:string prop list ->
  subnets:string prop list ->
  vpc_connector_name:string prop ->
  string ->
  t Tf_core.resource
