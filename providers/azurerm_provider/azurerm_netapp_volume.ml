(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_volume__data_protection_replication = {
  endpoint_type : string option; [@option]  (** endpoint_type *)
  remote_volume_location : string;  (** remote_volume_location *)
  remote_volume_resource_id : string;
      (** remote_volume_resource_id *)
  replication_frequency : string;  (** replication_frequency *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume__data_protection_replication *)

type azurerm_netapp_volume__data_protection_snapshot_policy = {
  snapshot_policy_id : string;  (** snapshot_policy_id *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume__data_protection_snapshot_policy *)

type azurerm_netapp_volume__export_policy_rule = {
  allowed_clients : string list;  (** allowed_clients *)
  protocols_enabled : string list option; [@option]
      (** protocols_enabled *)
  root_access_enabled : bool option; [@option]
      (** root_access_enabled *)
  rule_index : float;  (** rule_index *)
  unix_read_only : bool option; [@option]  (** unix_read_only *)
  unix_read_write : bool option; [@option]  (** unix_read_write *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume__export_policy_rule *)

type azurerm_netapp_volume__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume__timeouts *)

type azurerm_netapp_volume = {
  account_name : string;  (** account_name *)
  azure_vmware_data_store_enabled : bool option; [@option]
      (** azure_vmware_data_store_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  pool_name : string;  (** pool_name *)
  resource_group_name : string;  (** resource_group_name *)
  service_level : string;  (** service_level *)
  smb_access_based_enumeration_enabled : bool option; [@option]
      (** smb_access_based_enumeration_enabled *)
  smb_non_browsable_enabled : bool option; [@option]
      (** smb_non_browsable_enabled *)
  storage_quota_in_gb : float;  (** storage_quota_in_gb *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  volume_path : string;  (** volume_path *)
  zone : string option; [@option]  (** zone *)
  data_protection_replication :
    azurerm_netapp_volume__data_protection_replication list;
  data_protection_snapshot_policy :
    azurerm_netapp_volume__data_protection_snapshot_policy list;
  export_policy_rule :
    azurerm_netapp_volume__export_policy_rule list;
  timeouts : azurerm_netapp_volume__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_volume *)

let azurerm_netapp_volume ?azure_vmware_data_store_enabled
    ?smb_access_based_enumeration_enabled ?smb_non_browsable_enabled
    ?tags ?zone ?timeouts ~account_name ~location ~name ~pool_name
    ~resource_group_name ~service_level ~storage_quota_in_gb
    ~subnet_id ~volume_path ~data_protection_replication
    ~data_protection_snapshot_policy ~export_policy_rule
    __resource_id =
  let __resource_type = "azurerm_netapp_volume" in
  let __resource =
    {
      account_name;
      azure_vmware_data_store_enabled;
      location;
      name;
      pool_name;
      resource_group_name;
      service_level;
      smb_access_based_enumeration_enabled;
      smb_non_browsable_enabled;
      storage_quota_in_gb;
      subnet_id;
      tags;
      volume_path;
      zone;
      data_protection_replication;
      data_protection_snapshot_policy;
      export_policy_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_volume __resource);
  ()
