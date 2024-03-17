(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_ontap_volume__snaplock_configuration__autocommit_period

type aws_fsx_ontap_volume__snaplock_configuration__retention_period__default_retention

type aws_fsx_ontap_volume__snaplock_configuration__retention_period__maximum_retention

type aws_fsx_ontap_volume__snaplock_configuration__retention_period__minimum_retention

type aws_fsx_ontap_volume__snaplock_configuration__retention_period
type aws_fsx_ontap_volume__snaplock_configuration
type aws_fsx_ontap_volume__tiering_policy
type aws_fsx_ontap_volume__timeouts
type aws_fsx_ontap_volume

type t = private {
  arn : string prop;
  bypass_snaplock_enterprise_retention : bool prop;
  copy_tags_to_backups : bool prop;
  file_system_id : string prop;
  flexcache_endpoint_type : string prop;
  id : string prop;
  junction_path : string prop;
  name : string prop;
  ontap_volume_type : string prop;
  security_style : string prop;
  size_in_megabytes : float prop;
  skip_final_backup : bool prop;
  snapshot_policy : string prop;
  storage_efficiency_enabled : bool prop;
  storage_virtual_machine_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uuid : string prop;
  volume_type : string prop;
}

val aws_fsx_ontap_volume :
  ?bypass_snaplock_enterprise_retention:bool prop ->
  ?copy_tags_to_backups:bool prop ->
  ?id:string prop ->
  ?junction_path:string prop ->
  ?ontap_volume_type:string prop ->
  ?security_style:string prop ->
  ?skip_final_backup:bool prop ->
  ?snapshot_policy:string prop ->
  ?storage_efficiency_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_type:string prop ->
  ?timeouts:aws_fsx_ontap_volume__timeouts ->
  name:string prop ->
  size_in_megabytes:float prop ->
  storage_virtual_machine_id:string prop ->
  snaplock_configuration:
    aws_fsx_ontap_volume__snaplock_configuration list ->
  tiering_policy:aws_fsx_ontap_volume__tiering_policy list ->
  string ->
  t
