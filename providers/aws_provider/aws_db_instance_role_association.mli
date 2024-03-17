(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_db_instance_role_association

type t = private {
  db_instance_identifier : string prop;
  feature_name : string prop;
  id : string prop;
  role_arn : string prop;
}

val aws_db_instance_role_association :
  ?id:string prop ->
  db_instance_identifier:string prop ->
  feature_name:string prop ->
  role_arn:string prop ->
  string ->
  t
