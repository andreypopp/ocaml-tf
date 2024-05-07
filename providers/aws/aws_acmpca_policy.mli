(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_acmpca_policy

val aws_acmpca_policy :
  ?id:string prop ->
  policy:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_acmpca_policy

val yojson_of_aws_acmpca_policy : aws_acmpca_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val make :
  ?id:string prop ->
  policy:string prop ->
  resource_arn:string prop ->
  string ->
  t Tf_core.resource
