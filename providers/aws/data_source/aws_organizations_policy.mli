(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_policy

val aws_organizations_policy :
  ?id:string prop ->
  policy_id:string prop ->
  unit ->
  aws_organizations_policy

val yojson_of_aws_organizations_policy :
  aws_organizations_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  aws_managed : bool prop;
  content : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  policy_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  policy_id:string prop ->
  string ->
  t Tf_core.resource
