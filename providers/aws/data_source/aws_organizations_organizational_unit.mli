(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_organizational_unit

val aws_organizations_organizational_unit :
  ?id:string prop ->
  name:string prop ->
  parent_id:string prop ->
  unit ->
  aws_organizations_organizational_unit

val yojson_of_aws_organizations_organizational_unit :
  aws_organizations_organizational_unit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  parent_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  parent_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  parent_id:string prop ->
  string ->
  t Tf_core.resource
