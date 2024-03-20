(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_backup_vault

val aws_backup_vault :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_backup_vault

val yojson_of_aws_backup_vault : aws_backup_vault -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  recovery_points : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
