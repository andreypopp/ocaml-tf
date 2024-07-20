(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_datazone_environment_blueprint

val aws_datazone_environment_blueprint :
  domain_id:string prop ->
  managed:bool prop ->
  name:string prop ->
  unit ->
  aws_datazone_environment_blueprint

val yojson_of_aws_datazone_environment_blueprint :
  aws_datazone_environment_blueprint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  blueprint_provider : string prop;
  description : string prop;
  domain_id : string prop;
  id : string prop;
  managed : bool prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  domain_id:string prop ->
  managed:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  domain_id:string prop ->
  managed:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
