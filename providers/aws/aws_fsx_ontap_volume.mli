(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aggregate_configuration

val aggregate_configuration :
  ?aggregates:string prop list ->
  ?constituents_per_aggregate:float prop ->
  unit ->
  aggregate_configuration

type snaplock_configuration__autocommit_period

val snaplock_configuration__autocommit_period :
  ?type_:string prop ->
  ?value:float prop ->
  unit ->
  snaplock_configuration__autocommit_period

type snaplock_configuration__retention_period__default_retention

val snaplock_configuration__retention_period__default_retention :
  ?type_:string prop ->
  ?value:float prop ->
  unit ->
  snaplock_configuration__retention_period__default_retention

type snaplock_configuration__retention_period__maximum_retention

val snaplock_configuration__retention_period__maximum_retention :
  ?type_:string prop ->
  ?value:float prop ->
  unit ->
  snaplock_configuration__retention_period__maximum_retention

type snaplock_configuration__retention_period__minimum_retention

val snaplock_configuration__retention_period__minimum_retention :
  ?type_:string prop ->
  ?value:float prop ->
  unit ->
  snaplock_configuration__retention_period__minimum_retention

type snaplock_configuration__retention_period

val snaplock_configuration__retention_period :
  ?default_retention:
    snaplock_configuration__retention_period__default_retention list ->
  ?maximum_retention:
    snaplock_configuration__retention_period__maximum_retention list ->
  ?minimum_retention:
    snaplock_configuration__retention_period__minimum_retention list ->
  unit ->
  snaplock_configuration__retention_period

type snaplock_configuration

val snaplock_configuration :
  ?audit_log_volume:bool prop ->
  ?privileged_delete:string prop ->
  ?volume_append_mode_enabled:bool prop ->
  ?autocommit_period:snaplock_configuration__autocommit_period list ->
  ?retention_period:snaplock_configuration__retention_period list ->
  snaplock_type:string prop ->
  unit ->
  snaplock_configuration

type tiering_policy

val tiering_policy :
  ?cooling_period:float prop ->
  ?name:string prop ->
  unit ->
  tiering_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fsx_ontap_volume

val aws_fsx_ontap_volume :
  ?bypass_snaplock_enterprise_retention:bool prop ->
  ?copy_tags_to_backups:bool prop ->
  ?final_backup_tags:(string * string prop) list ->
  ?id:string prop ->
  ?junction_path:string prop ->
  ?ontap_volume_type:string prop ->
  ?security_style:string prop ->
  ?size_in_bytes:string prop ->
  ?size_in_megabytes:float prop ->
  ?skip_final_backup:bool prop ->
  ?snapshot_policy:string prop ->
  ?storage_efficiency_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_style:string prop ->
  ?volume_type:string prop ->
  ?aggregate_configuration:aggregate_configuration list ->
  ?snaplock_configuration:snaplock_configuration list ->
  ?tiering_policy:tiering_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_virtual_machine_id:string prop ->
  unit ->
  aws_fsx_ontap_volume

val yojson_of_aws_fsx_ontap_volume : aws_fsx_ontap_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  bypass_snaplock_enterprise_retention : bool prop;
  copy_tags_to_backups : bool prop;
  file_system_id : string prop;
  final_backup_tags : (string * string) list prop;
  flexcache_endpoint_type : string prop;
  id : string prop;
  junction_path : string prop;
  name : string prop;
  ontap_volume_type : string prop;
  security_style : string prop;
  size_in_bytes : string prop;
  size_in_megabytes : float prop;
  skip_final_backup : bool prop;
  snapshot_policy : string prop;
  storage_efficiency_enabled : bool prop;
  storage_virtual_machine_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uuid : string prop;
  volume_style : string prop;
  volume_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bypass_snaplock_enterprise_retention:bool prop ->
  ?copy_tags_to_backups:bool prop ->
  ?final_backup_tags:(string * string prop) list ->
  ?id:string prop ->
  ?junction_path:string prop ->
  ?ontap_volume_type:string prop ->
  ?security_style:string prop ->
  ?size_in_bytes:string prop ->
  ?size_in_megabytes:float prop ->
  ?skip_final_backup:bool prop ->
  ?snapshot_policy:string prop ->
  ?storage_efficiency_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_style:string prop ->
  ?volume_type:string prop ->
  ?aggregate_configuration:aggregate_configuration list ->
  ?snaplock_configuration:snaplock_configuration list ->
  ?tiering_policy:tiering_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_virtual_machine_id:string prop ->
  string ->
  t

val make :
  ?bypass_snaplock_enterprise_retention:bool prop ->
  ?copy_tags_to_backups:bool prop ->
  ?final_backup_tags:(string * string prop) list ->
  ?id:string prop ->
  ?junction_path:string prop ->
  ?ontap_volume_type:string prop ->
  ?security_style:string prop ->
  ?size_in_bytes:string prop ->
  ?size_in_megabytes:float prop ->
  ?skip_final_backup:bool prop ->
  ?snapshot_policy:string prop ->
  ?storage_efficiency_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_style:string prop ->
  ?volume_type:string prop ->
  ?aggregate_configuration:aggregate_configuration list ->
  ?snaplock_configuration:snaplock_configuration list ->
  ?tiering_policy:tiering_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_virtual_machine_id:string prop ->
  string ->
  t Tf_core.resource
