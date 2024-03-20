(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_policies_for_target

val aws_organizations_policies_for_target :
  ?id:string prop ->
  filter:string prop ->
  target_id:string prop ->
  unit ->
  aws_organizations_policies_for_target

val yojson_of_aws_organizations_policies_for_target :
  aws_organizations_policies_for_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  filter : string prop;
  id : string prop;
  ids : string list prop;
  target_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:string prop ->
  target_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:string prop ->
  target_id:string prop ->
  string ->
  t Tf_core.resource
