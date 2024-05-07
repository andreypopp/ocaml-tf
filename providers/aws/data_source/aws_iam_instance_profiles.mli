(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_instance_profiles

val aws_iam_instance_profiles :
  ?id:string prop ->
  role_name:string prop ->
  unit ->
  aws_iam_instance_profiles

val yojson_of_aws_iam_instance_profiles :
  aws_iam_instance_profiles -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  names : string list prop;
  paths : string list prop;
  role_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  role_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  role_name:string prop ->
  string ->
  t Tf_core.resource
