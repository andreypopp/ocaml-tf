(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_ontap_file_system__disk_iops_configuration
type aws_fsx_ontap_file_system__timeouts

type aws_fsx_ontap_file_system__endpoints__management = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}

type aws_fsx_ontap_file_system__endpoints__intercluster = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}

type aws_fsx_ontap_file_system__endpoints = {
  intercluster :
    aws_fsx_ontap_file_system__endpoints__intercluster list;
      (** intercluster *)
  management : aws_fsx_ontap_file_system__endpoints__management list;
      (** management *)
}

type aws_fsx_ontap_file_system

val aws_fsx_ontap_file_system :
  ?automatic_backup_retention_days:float prop ->
  ?daily_automatic_backup_start_time:string prop ->
  ?endpoint_ip_address_range:string prop ->
  ?fsx_admin_password:string prop ->
  ?ha_pairs:float prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?route_table_ids:string prop list ->
  ?security_group_ids:string prop list ->
  ?storage_capacity:float prop ->
  ?storage_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?throughput_capacity:float prop ->
  ?throughput_capacity_per_ha_pair:float prop ->
  ?weekly_maintenance_start_time:string prop ->
  ?timeouts:aws_fsx_ontap_file_system__timeouts ->
  deployment_type:string prop ->
  preferred_subnet_id:string prop ->
  subnet_ids:string prop list ->
  disk_iops_configuration:
    aws_fsx_ontap_file_system__disk_iops_configuration list ->
  string ->
  unit
