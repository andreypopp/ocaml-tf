(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glacier_vault_lock

val aws_glacier_vault_lock :
  ?ignore_deletion_error:bool ->
  complete_lock:bool ->
  policy:string ->
  vault_name:string ->
  string ->
  unit
