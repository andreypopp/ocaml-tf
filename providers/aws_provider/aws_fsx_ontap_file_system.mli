(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_ontap_file_system__disk_iops_configuration
type aws_fsx_ontap_file_system__timeouts

type aws_fsx_ontap_file_system__endpoints__management = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_file_system__endpoints__intercluster = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_file_system__endpoints = {
  intercluster :
    aws_fsx_ontap_file_system__endpoints__intercluster list;
      (** intercluster *)
  management : aws_fsx_ontap_file_system__endpoints__management list;
      (** management *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_file_system

val aws_fsx_ontap_file_system :
  ?automatic_backup_retention_days:float ->
  ?fsx_admin_password:string ->
  ?security_group_ids:string list ->
  ?storage_capacity:float ->
  ?storage_type:string ->
  ?tags:(string * string) list ->
  ?throughput_capacity:float ->
  ?throughput_capacity_per_ha_pair:float ->
  ?timeouts:aws_fsx_ontap_file_system__timeouts ->
  deployment_type:string ->
  preferred_subnet_id:string ->
  subnet_ids:string list ->
  disk_iops_configuration:
    aws_fsx_ontap_file_system__disk_iops_configuration list ->
  string ->
  unit
