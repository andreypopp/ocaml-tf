(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type schedule_config

val schedule_config :
  first_execution_from:string prop ->
  object_:string prop ->
  schedule_expression:string prop ->
  unit ->
  schedule_config

type aws_appintegrations_data_integration

val aws_appintegrations_data_integration :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  kms_key:string prop ->
  name:string prop ->
  source_uri:string prop ->
  schedule_config:schedule_config list ->
  unit ->
  aws_appintegrations_data_integration

val yojson_of_aws_appintegrations_data_integration :
  aws_appintegrations_data_integration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  kms_key : string prop;
  name : string prop;
  source_uri : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  kms_key:string prop ->
  name:string prop ->
  source_uri:string prop ->
  schedule_config:schedule_config list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  kms_key:string prop ->
  name:string prop ->
  source_uri:string prop ->
  schedule_config:schedule_config list ->
  string ->
  t Tf_core.resource
