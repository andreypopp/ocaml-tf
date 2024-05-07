(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_backup_vault

val aws_backup_vault :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_backup_vault

val yojson_of_aws_backup_vault : aws_backup_vault -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  recovery_points : float prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
