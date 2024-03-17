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
  create_from_snapshot_resource_id : string option; [@option]
      (** create_from_snapshot_resource_id *)
  encryption_key_source : string option; [@option]
      (** encryption_key_source *)
  id : string option; [@option]  (** id *)
  key_vault_private_endpoint_id : string option; [@option]
      (** key_vault_private_endpoint_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  network_features : string option; [@option]
      (** network_features *)
  pool_name : string;  (** pool_name *)
  protocols : string list option; [@option]  (** protocols *)
  resource_group_name : string;  (** resource_group_name *)
  security_style : string option; [@option]  (** security_style *)
  service_level : string;  (** service_level *)
  smb_access_based_enumeration_enabled : bool option; [@option]
      (** smb_access_based_enumeration_enabled *)
  smb_non_browsable_enabled : bool option; [@option]
      (** smb_non_browsable_enabled *)
  snapshot_directory_visible : bool option; [@option]
      (** snapshot_directory_visible *)
  storage_quota_in_gb : float;  (** storage_quota_in_gb *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  throughput_in_mibps : float option; [@option]
      (** throughput_in_mibps *)
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
    ?create_from_snapshot_resource_id ?encryption_key_source ?id
    ?key_vault_private_endpoint_id ?network_features ?protocols
    ?security_style ?smb_access_based_enumeration_enabled
    ?smb_non_browsable_enabled ?snapshot_directory_visible ?tags
    ?throughput_in_mibps ?zone ?timeouts ~account_name ~location
    ~name ~pool_name ~resource_group_name ~service_level
    ~storage_quota_in_gb ~subnet_id ~volume_path
    ~data_protection_replication ~data_protection_snapshot_policy
    ~export_policy_rule __resource_id =
  let __resource_type = "azurerm_netapp_volume" in
  let __resource =
    {
      account_name;
      azure_vmware_data_store_enabled;
      create_from_snapshot_resource_id;
      encryption_key_source;
      id;
      key_vault_private_endpoint_id;
      location;
      name;
      network_features;
      pool_name;
      protocols;
      resource_group_name;
      security_style;
      service_level;
      smb_access_based_enumeration_enabled;
      smb_non_browsable_enabled;
      snapshot_directory_visible;
      storage_quota_in_gb;
      subnet_id;
      tags;
      throughput_in_mibps;
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
