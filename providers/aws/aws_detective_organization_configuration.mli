(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_detective_organization_configuration

val aws_detective_organization_configuration :
  ?id:string prop ->
  auto_enable:bool prop ->
  graph_arn:string prop ->
  unit ->
  aws_detective_organization_configuration

val yojson_of_aws_detective_organization_configuration :
  aws_detective_organization_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_enable : bool prop;
  graph_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  auto_enable:bool prop ->
  graph_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  auto_enable:bool prop ->
  graph_arn:string prop ->
  string ->
  t Tf_core.resource
