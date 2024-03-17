(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_secretsmanager_secret__replica
type aws_secretsmanager_secret

val aws_secretsmanager_secret :
  ?description:string prop ->
  ?force_overwrite_replica_secret:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?policy:string prop ->
  ?recovery_window_in_days:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  replica:aws_secretsmanager_secret__replica list ->
  string ->
  unit
