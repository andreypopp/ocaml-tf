(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type disk_iops_configuration = {
  iops : float prop;  (** iops *)
  mode : string prop;  (** mode *)
}

type endpoints__management = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
}

type endpoints__intercluster = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
}

type endpoints = {
  intercluster : endpoints__intercluster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** intercluster *)
  management : endpoints__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** management *)
}

type aws_fsx_ontap_file_system

val aws_fsx_ontap_file_system :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  unit ->
  aws_fsx_ontap_file_system

val yojson_of_aws_fsx_ontap_file_system :
  aws_fsx_ontap_file_system -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  automatic_backup_retention_days : float prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  disk_iops_configuration : disk_iops_configuration list prop;
  dns_name : string prop;
  endpoint_ip_address_range : string prop;
  endpoints : endpoints list prop;
  ha_pairs : float prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_subnet_id : string prop;
  route_table_ids : string list prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  throughput_capacity : float prop;
  throughput_capacity_per_ha_pair : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t Tf_core.resource
