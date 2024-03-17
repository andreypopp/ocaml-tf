(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret__replica
type aws_secretsmanager_secret

val aws_secretsmanager_secret :
  ?description:string ->
  ?force_overwrite_replica_secret:bool ->
  ?kms_key_id:string ->
  ?recovery_window_in_days:float ->
  ?tags:(string * string) list ->
  replica:aws_secretsmanager_secret__replica list ->
  string ->
  unit
