(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lakeformation_resource

val aws_lakeformation_resource :
  ?id:string prop ->
  arn:string prop ->
  unit ->
  aws_lakeformation_resource

val yojson_of_aws_lakeformation_resource :
  aws_lakeformation_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  last_modified : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop -> arn:string prop -> string -> t Tf_core.resource
