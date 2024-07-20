(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type high_availability_config

val high_availability_config :
  desired_capacity:float prop -> unit -> high_availability_config

type storage_configuration__efs

val storage_configuration__efs :
  file_system_id:string prop ->
  mount_point:string prop ->
  unit ->
  storage_configuration__efs

type storage_configuration__fsx

val storage_configuration__fsx :
  file_system_id:string prop ->
  mount_point:string prop ->
  unit ->
  storage_configuration__fsx

type storage_configuration

val storage_configuration :
  ?efs:storage_configuration__efs list ->
  ?fsx:storage_configuration__fsx list ->
  unit ->
  storage_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_m2_environment

val aws_m2_environment :
  ?apply_changes_during_maintenance_window:bool prop ->
  ?description:string prop ->
  ?engine_version:string prop ->
  ?force_update:bool prop ->
  ?kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?publicly_accessible:bool prop ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?high_availability_config:high_availability_config list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  engine_type:string prop ->
  instance_type:string prop ->
  name:string prop ->
  unit ->
  aws_m2_environment

val yojson_of_aws_m2_environment : aws_m2_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  apply_changes_during_maintenance_window : bool prop;
  arn : string prop;
  description : string prop;
  engine_type : string prop;
  engine_version : string prop;
  environment_id : string prop;
  force_update : bool prop;
  id : string prop;
  instance_type : string prop;
  kms_key_id : string prop;
  load_balancer_arn : string prop;
  name : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?apply_changes_during_maintenance_window:bool prop ->
  ?description:string prop ->
  ?engine_version:string prop ->
  ?force_update:bool prop ->
  ?kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?publicly_accessible:bool prop ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?high_availability_config:high_availability_config list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  engine_type:string prop ->
  instance_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?apply_changes_during_maintenance_window:bool prop ->
  ?description:string prop ->
  ?engine_version:string prop ->
  ?force_update:bool prop ->
  ?kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?publicly_accessible:bool prop ->
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?high_availability_config:high_availability_config list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  engine_type:string prop ->
  instance_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
