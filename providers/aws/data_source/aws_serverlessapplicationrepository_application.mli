(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_serverlessapplicationrepository_application

val aws_serverlessapplicationrepository_application :
  ?id:string prop ->
  ?semantic_version:string prop ->
  application_id:string prop ->
  unit ->
  aws_serverlessapplicationrepository_application

val yojson_of_aws_serverlessapplicationrepository_application :
  aws_serverlessapplicationrepository_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  id : string prop;
  name : string prop;
  required_capabilities : string list prop;
  semantic_version : string prop;
  source_code_url : string prop;
  template_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?semantic_version:string prop ->
  application_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?semantic_version:string prop ->
  application_id:string prop ->
  string ->
  t Tf_core.resource
