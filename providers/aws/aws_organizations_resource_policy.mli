(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_resource_policy

val aws_organizations_resource_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  content:string prop ->
  unit ->
  aws_organizations_resource_policy

val yojson_of_aws_organizations_resource_policy :
  aws_organizations_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  content : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  content:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  content:string prop ->
  string ->
  t Tf_core.resource
