(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_opsworks_permission

val aws_opsworks_permission :
  ?allow_ssh:bool prop ->
  ?allow_sudo:bool prop ->
  ?id:string prop ->
  ?level:string prop ->
  stack_id:string prop ->
  user_arn:string prop ->
  unit ->
  aws_opsworks_permission

val yojson_of_aws_opsworks_permission :
  aws_opsworks_permission -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_ssh : bool prop;
  allow_sudo : bool prop;
  id : string prop;
  level : string prop;
  stack_id : string prop;
  user_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_ssh:bool prop ->
  ?allow_sudo:bool prop ->
  ?id:string prop ->
  ?level:string prop ->
  stack_id:string prop ->
  user_arn:string prop ->
  string ->
  t
