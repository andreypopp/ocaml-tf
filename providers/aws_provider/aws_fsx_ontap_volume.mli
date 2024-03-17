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

val aws_fsx_ontap_volume :
  ?bypass_snaplock_enterprise_retention:bool ->
  ?copy_tags_to_backups:bool ->
  ?id:string ->
  ?junction_path:string ->
  ?ontap_volume_type:string ->
  ?security_style:string ->
  ?skip_final_backup:bool ->
  ?snapshot_policy:string ->
  ?storage_efficiency_enabled:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?volume_type:string ->
  ?timeouts:aws_fsx_ontap_volume__timeouts ->
  name:string ->
  size_in_megabytes:float ->
  storage_virtual_machine_id:string ->
  snaplock_configuration:
    aws_fsx_ontap_volume__snaplock_configuration list ->
  tiering_policy:aws_fsx_ontap_volume__tiering_policy list ->
  string ->
  unit
