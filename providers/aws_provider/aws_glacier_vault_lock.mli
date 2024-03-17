(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glacier_vault_lock

val aws_glacier_vault_lock :
  ?id:string prop ->
  ?ignore_deletion_error:bool prop ->
  complete_lock:bool prop ->
  policy:string prop ->
  vault_name:string prop ->
  string ->
  unit
