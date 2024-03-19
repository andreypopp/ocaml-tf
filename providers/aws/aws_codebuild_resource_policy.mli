(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_codebuild_resource_policy

val aws_codebuild_resource_policy :
  ?id:string prop ->
  policy:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_codebuild_resource_policy

val yojson_of_aws_codebuild_resource_policy :
  aws_codebuild_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy:string prop ->
  resource_arn:string prop ->
  string ->
  t
