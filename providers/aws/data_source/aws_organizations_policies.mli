(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_policies

val aws_organizations_policies :
  ?id:string prop ->
  filter:string prop ->
  unit ->
  aws_organizations_policies

val yojson_of_aws_organizations_policies :
  aws_organizations_policies -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:string prop ->
  string ->
  t Tf_core.resource
