(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_instance_profile

val aws_iam_instance_profile :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_iam_instance_profile

val yojson_of_aws_iam_instance_profile :
  aws_iam_instance_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  create_date : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  role_arn : string prop;
  role_id : string prop;
  role_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
