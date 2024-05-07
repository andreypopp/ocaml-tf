(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssm_document

val aws_ssm_document :
  ?document_format:string prop ->
  ?document_version:string prop ->
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_ssm_document

val yojson_of_aws_ssm_document : aws_ssm_document -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  content : string prop;
  document_format : string prop;
  document_type : string prop;
  document_version : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?document_format:string prop ->
  ?document_version:string prop ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?document_format:string prop ->
  ?document_version:string prop ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
