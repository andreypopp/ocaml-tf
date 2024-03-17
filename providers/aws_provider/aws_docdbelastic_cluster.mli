(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdbelastic_cluster__timeouts
type aws_docdbelastic_cluster

val aws_docdbelastic_cluster :
  ?kms_key_id:string ->
  ?preferred_maintenance_window:string ->
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?vpc_security_group_ids:string list ->
  ?timeouts:aws_docdbelastic_cluster__timeouts ->
  admin_user_name:string ->
  admin_user_password:string ->
  auth_type:string ->
  name:string ->
  shard_capacity:float ->
  shard_count:float ->
  string ->
  unit
