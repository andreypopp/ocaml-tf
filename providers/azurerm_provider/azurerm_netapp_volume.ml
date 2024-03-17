(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_volume__data_protection_replication = {
  endpoint_type : string prop option; [@option]  (** endpoint_type *)
  remote_volume_location : string prop;
      (** remote_volume_location *)
  remote_volume_resource_id : string prop;
      (** remote_volume_resource_id *)
  replication_frequency : string prop;  (** replication_frequency *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume__data_protection_replication *)

type azurerm_netapp_volume__data_protection_snapshot_policy = {
  snapshot_policy_id : string prop;  (** snapshot_policy_id *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume__data_protection_snapshot_policy *)

type azurerm_netapp_volume__export_policy_rule = {
  allowed_clients : string prop list;  (** allowed_clients *)
  protocols_enabled : string prop list option; [@option]
      (** protocols_enabled *)
  root_access_enabled : bool prop option; [@option]
      (** root_access_enabled *)
  rule_index : float prop;  (** rule_index *)
  unix_read_only : bool prop option; [@option]  (** unix_read_only *)
  unix_read_write : bool prop option; [@option]
      (** unix_read_write *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume__export_policy_rule *)

type azurerm_netapp_volume__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume__timeouts *)

type azurerm_netapp_volume = {
  account_name : string prop;  (** account_name *)
  azure_vmware_data_store_enabled : bool prop option; [@option]
      (** azure_vmware_data_store_enabled *)
  create_from_snapshot_resource_id : string prop option; [@option]
      (** create_from_snapshot_resource_id *)
  encryption_key_source : string prop option; [@option]
      (** encryption_key_source *)
  id : string prop option; [@option]  (** id *)
  key_vault_private_endpoint_id : string prop option; [@option]
      (** key_vault_private_endpoint_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_features : string prop option; [@option]
      (** network_features *)
  pool_name : string prop;  (** pool_name *)
  protocols : string prop list option; [@option]  (** protocols *)
  resource_group_name : string prop;  (** resource_group_name *)
  security_style : string prop option; [@option]
      (** security_style *)
  service_level : string prop;  (** service_level *)
  smb_access_based_enumeration_enabled : bool prop option; [@option]
      (** smb_access_based_enumeration_enabled *)
  smb_non_browsable_enabled : bool prop option; [@option]
      (** smb_non_browsable_enabled *)
  snapshot_directory_visible : bool prop option; [@option]
      (** snapshot_directory_visible *)
  storage_quota_in_gb : float prop;  (** storage_quota_in_gb *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  throughput_in_mibps : float prop option; [@option]
      (** throughput_in_mibps *)
  volume_path : string prop;  (** volume_path *)
  zone : string prop option; [@option]  (** zone *)
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
