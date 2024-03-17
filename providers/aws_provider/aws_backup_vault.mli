(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_vault__timeouts
type aws_backup_vault

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

val aws_backup_vault :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_backup_vault__timeouts ->
  name:string prop ->
  string ->
  t
