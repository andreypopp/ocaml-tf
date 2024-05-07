(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_opsworks_rds_db_instance

val aws_opsworks_rds_db_instance :
  ?id:string prop ->
  db_password:string prop ->
  db_user:string prop ->
  rds_db_instance_arn:string prop ->
  stack_id:string prop ->
  unit ->
  aws_opsworks_rds_db_instance

val yojson_of_aws_opsworks_rds_db_instance :
  aws_opsworks_rds_db_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  db_password : string prop;
  db_user : string prop;
  id : string prop;
  rds_db_instance_arn : string prop;
  stack_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  db_password:string prop ->
  db_user:string prop ->
  rds_db_instance_arn:string prop ->
  stack_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  db_password:string prop ->
  db_user:string prop ->
  rds_db_instance_arn:string prop ->
  stack_id:string prop ->
  string ->
  t Tf_core.resource
