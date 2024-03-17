(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codecommit_repository

type t = private {
  arn : string prop;
  clone_url_http : string prop;
  clone_url_ssh : string prop;
  default_branch : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  repository_id : string prop;
  repository_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_codecommit_repository :
  ?default_branch:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  repository_name:string prop ->
  string ->
  t
