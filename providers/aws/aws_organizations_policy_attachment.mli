(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_policy_attachment

val aws_organizations_policy_attachment :
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  policy_id:string prop ->
  target_id:string prop ->
  unit ->
  aws_organizations_policy_attachment

val yojson_of_aws_organizations_policy_attachment :
  aws_organizations_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  policy_id : string prop;
  skip_destroy : bool prop;
  target_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  policy_id:string prop ->
  target_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  policy_id:string prop ->
  target_id:string prop ->
  string ->
  t Tf_core.resource
