(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codecommit_repository

val aws_codecommit_repository :
  ?default_branch:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  repository_name:string prop ->
  unit ->
  aws_codecommit_repository

val yojson_of_aws_codecommit_repository :
  aws_codecommit_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  clone_url_http : string prop;
  clone_url_ssh : string prop;
  default_branch : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  repository_id : string prop;
  repository_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_branch:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  repository_name:string prop ->
  string ->
  t

val make :
  ?default_branch:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  repository_name:string prop ->
  string ->
  t Tf_core.resource
