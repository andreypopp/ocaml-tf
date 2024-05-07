(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_docdbelastic_cluster

val aws_docdbelastic_cluster :
  ?kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  admin_user_name:string prop ->
  admin_user_password:string prop ->
  auth_type:string prop ->
  name:string prop ->
  shard_capacity:float prop ->
  shard_count:float prop ->
  unit ->
  aws_docdbelastic_cluster

val yojson_of_aws_docdbelastic_cluster :
  aws_docdbelastic_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_user_name : string prop;
  admin_user_password : string prop;
  arn : string prop;
  auth_type : string prop;
  endpoint : string prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  preferred_maintenance_window : string prop;
  shard_capacity : float prop;
  shard_count : float prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  admin_user_name:string prop ->
  admin_user_password:string prop ->
  auth_type:string prop ->
  name:string prop ->
  shard_capacity:float prop ->
  shard_count:float prop ->
  string ->
  t

val make :
  ?kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  admin_user_name:string prop ->
  admin_user_password:string prop ->
  auth_type:string prop ->
  name:string prop ->
  shard_capacity:float prop ->
  shard_count:float prop ->
  string ->
  t Tf_core.resource
