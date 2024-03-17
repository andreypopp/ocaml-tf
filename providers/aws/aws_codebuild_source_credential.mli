(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codebuild_source_credential

type t = private {
  arn : string prop;
  auth_type : string prop;
  id : string prop;
  server_type : string prop;
  token : string prop;
  user_name : string prop;
}

val aws_codebuild_source_credential :
  ?id:string prop ->
  ?user_name:string prop ->
  auth_type:string prop ->
  server_type:string prop ->
  token:string prop ->
  string ->
  t
