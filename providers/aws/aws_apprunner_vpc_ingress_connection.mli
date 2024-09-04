(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ingress_vpc_configuration

val ingress_vpc_configuration :
  ?vpc_endpoint_id:string prop ->
  ?vpc_id:string prop ->
  unit ->
  ingress_vpc_configuration

type aws_apprunner_vpc_ingress_connection

val aws_apprunner_vpc_ingress_connection :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  service_arn:string prop ->
  ingress_vpc_configuration:ingress_vpc_configuration list ->
  unit ->
  aws_apprunner_vpc_ingress_connection

val yojson_of_aws_apprunner_vpc_ingress_connection :
  aws_apprunner_vpc_ingress_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  service_arn : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  service_arn:string prop ->
  ingress_vpc_configuration:ingress_vpc_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  service_arn:string prop ->
  ingress_vpc_configuration:ingress_vpc_configuration list ->
  string ->
  t Tf_core.resource
