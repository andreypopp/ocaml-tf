(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_fsx_ontap_file_system__disk_iops_configuration = {
  iops : float option; [@option]  (** iops *)
  mode : string option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_file_system__disk_iops_configuration *)

type aws_fsx_ontap_file_system__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_file_system__timeouts *)

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

type aws_fsx_ontap_file_system = {
  automatic_backup_retention_days : float option; [@option]
      (** automatic_backup_retention_days *)
  deployment_type : string;  (** deployment_type *)
  fsx_admin_password : string option; [@option]
      (** fsx_admin_password *)
  preferred_subnet_id : string;  (** preferred_subnet_id *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  storage_capacity : float option; [@option]  (** storage_capacity *)
  storage_type : string option; [@option]  (** storage_type *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  throughput_capacity : float option; [@option]
      (** throughput_capacity *)
  throughput_capacity_per_ha_pair : float option; [@option]
      (** throughput_capacity_per_ha_pair *)
  disk_iops_configuration :
    aws_fsx_ontap_file_system__disk_iops_configuration list;
  timeouts : aws_fsx_ontap_file_system__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_file_system *)

let aws_fsx_ontap_file_system ?automatic_backup_retention_days
    ?fsx_admin_password ?security_group_ids ?storage_capacity
    ?storage_type ?tags ?throughput_capacity
    ?throughput_capacity_per_ha_pair ?timeouts ~deployment_type
    ~preferred_subnet_id ~subnet_ids ~disk_iops_configuration
    __resource_id =
  let __resource_type = "aws_fsx_ontap_file_system" in
  let __resource =
    {
      automatic_backup_retention_days;
      deployment_type;
      fsx_admin_password;
      preferred_subnet_id;
      security_group_ids;
      storage_capacity;
      storage_type;
      subnet_ids;
      tags;
      throughput_capacity;
      throughput_capacity_per_ha_pair;
      disk_iops_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_ontap_file_system __resource);
  ()
