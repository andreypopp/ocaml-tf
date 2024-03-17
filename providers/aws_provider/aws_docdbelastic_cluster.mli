(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdbelastic_cluster__timeouts
type aws_docdbelastic_cluster

val aws_docdbelastic_cluster :
  ?kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:aws_docdbelastic_cluster__timeouts ->
  admin_user_name:string prop ->
  admin_user_password:string prop ->
  auth_type:string prop ->
  name:string prop ->
  shard_capacity:float prop ->
  shard_count:float prop ->
  string ->
  unit
