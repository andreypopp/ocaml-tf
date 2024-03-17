(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_rds_db_instance

type t = private {
  db_password : string prop;
  db_user : string prop;
  id : string prop;
  rds_db_instance_arn : string prop;
  stack_id : string prop;
}

val aws_opsworks_rds_db_instance :
  ?id:string prop ->
  db_password:string prop ->
  db_user:string prop ->
  rds_db_instance_arn:string prop ->
  stack_id:string prop ->
  string ->
  t
