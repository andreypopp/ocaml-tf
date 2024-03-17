(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_ontap_file_system__disk_iops_configuration = {
  iops : float prop option; [@option]  (** iops *)
  mode : string prop option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_file_system__disk_iops_configuration *)

type aws_fsx_ontap_file_system__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_file_system__timeouts *)

type aws_fsx_ontap_file_system__endpoints__management = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_file_system__endpoints__intercluster = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
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

type aws_fsx_ontap_file_system = {
  automatic_backup_retention_days : float prop option; [@option]
      (** automatic_backup_retention_days *)
  daily_automatic_backup_start_time : string prop option; [@option]
      (** daily_automatic_backup_start_time *)
  deployment_type : string prop;  (** deployment_type *)
  endpoint_ip_address_range : string prop option; [@option]
      (** endpoint_ip_address_range *)
  fsx_admin_password : string prop option; [@option]
      (** fsx_admin_password *)
  ha_pairs : float prop option; [@option]  (** ha_pairs *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  preferred_subnet_id : string prop;  (** preferred_subnet_id *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  storage_capacity : float prop option; [@option]
      (** storage_capacity *)
  storage_type : string prop option; [@option]  (** storage_type *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput_capacity : float prop option; [@option]
      (** throughput_capacity *)
  throughput_capacity_per_ha_pair : float prop option; [@option]
      (** throughput_capacity_per_ha_pair *)
  weekly_maintenance_start_time : string prop option; [@option]
      (** weekly_maintenance_start_time *)
  disk_iops_configuration :
    aws_fsx_ontap_file_system__disk_iops_configuration list;
  timeouts : aws_fsx_ontap_file_system__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_file_system *)

let aws_fsx_ontap_file_system ?automatic_backup_retention_days
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range
    ?fsx_admin_password ?ha_pairs ?id ?kms_key_id ?route_table_ids
    ?security_group_ids ?storage_capacity ?storage_type ?tags
    ?tags_all ?throughput_capacity ?throughput_capacity_per_ha_pair
    ?weekly_maintenance_start_time ?timeouts ~deployment_type
    ~preferred_subnet_id ~subnet_ids ~disk_iops_configuration
    __resource_id =
  let __resource_type = "aws_fsx_ontap_file_system" in
  let __resource =
    {
      automatic_backup_retention_days;
      daily_automatic_backup_start_time;
      deployment_type;
      endpoint_ip_address_range;
      fsx_admin_password;
      ha_pairs;
      id;
      kms_key_id;
      preferred_subnet_id;
      route_table_ids;
      security_group_ids;
      storage_capacity;
      storage_type;
      subnet_ids;
      tags;
      tags_all;
      throughput_capacity;
      throughput_capacity_per_ha_pair;
      weekly_maintenance_start_time;
      disk_iops_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_ontap_file_system __resource);
  ()
