(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_glue_resource_policy

val aws_glue_resource_policy :
  ?enable_hybrid:string prop ->
  ?id:string prop ->
  policy:string prop ->
  unit ->
  aws_glue_resource_policy

val yojson_of_aws_glue_resource_policy :
  aws_glue_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enable_hybrid : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_hybrid:string prop ->
  ?id:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?enable_hybrid:string prop ->
  ?id:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
