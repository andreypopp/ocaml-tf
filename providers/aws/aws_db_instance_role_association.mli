(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_db_instance_role_association

val aws_db_instance_role_association :
  ?id:string prop ->
  db_instance_identifier:string prop ->
  feature_name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_db_instance_role_association

val yojson_of_aws_db_instance_role_association :
  aws_db_instance_role_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  db_instance_identifier : string prop;
  feature_name : string prop;
  id : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  db_instance_identifier:string prop ->
  feature_name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  db_instance_identifier:string prop ->
  feature_name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
