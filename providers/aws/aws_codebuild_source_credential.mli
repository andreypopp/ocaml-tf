(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codebuild_source_credential

val aws_codebuild_source_credential :
  ?id:string prop ->
  ?user_name:string prop ->
  auth_type:string prop ->
  server_type:string prop ->
  token:string prop ->
  unit ->
  aws_codebuild_source_credential

val yojson_of_aws_codebuild_source_credential :
  aws_codebuild_source_credential -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auth_type : string prop;
  id : string prop;
  server_type : string prop;
  token : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?user_name:string prop ->
  auth_type:string prop ->
  server_type:string prop ->
  token:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?user_name:string prop ->
  auth_type:string prop ->
  server_type:string prop ->
  token:string prop ->
  string ->
  t Tf_core.resource
