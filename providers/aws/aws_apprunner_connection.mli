(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apprunner_connection

val aws_apprunner_connection :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  connection_name:string prop ->
  provider_type:string prop ->
  unit ->
  aws_apprunner_connection

val yojson_of_aws_apprunner_connection :
  aws_apprunner_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  connection_name : string prop;
  id : string prop;
  provider_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  connection_name:string prop ->
  provider_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  connection_name:string prop ->
  provider_type:string prop ->
  string ->
  t Tf_core.resource
