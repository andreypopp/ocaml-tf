(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudformation_export

val aws_cloudformation_export :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_cloudformation_export

val yojson_of_aws_cloudformation_export :
  aws_cloudformation_export -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  exporting_stack_id : string prop;
  id : string prop;
  name : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
