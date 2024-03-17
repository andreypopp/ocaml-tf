(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_netapp_volume_group_sap_hana__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__timeouts *)

type azurerm_netapp_volume_group_sap_hana__volume__data_protection_replication = {
  endpoint_type : string option; [@option]  (** endpoint_type *)
  remote_volume_location : string;  (** remote_volume_location *)
  remote_volume_resource_id : string;
      (** remote_volume_resource_id *)
  replication_frequency : string;  (** replication_frequency *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__volume__data_protection_replication *)

type azurerm_netapp_volume_group_sap_hana__volume__data_protection_snapshot_policy = {
  snapshot_policy_id : string;  (** snapshot_policy_id *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__volume__data_protection_snapshot_policy *)

type azurerm_netapp_volume_group_sap_hana__volume__export_policy_rule = {
  allowed_clients : string;  (** allowed_clients *)
  nfsv3_enabled : bool;  (** nfsv3_enabled *)
  nfsv41_enabled : bool;  (** nfsv41_enabled *)
  root_access_enabled : bool option; [@option]
      (** root_access_enabled *)
  rule_index : float;  (** rule_index *)
  unix_read_only : bool option; [@option]  (** unix_read_only *)
  unix_read_write : bool option; [@option]  (** unix_read_write *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__volume__export_policy_rule *)

type azurerm_netapp_volume_group_sap_hana__volume = {
  capacity_pool_id : string;  (** capacity_pool_id *)
  id : string;  (** id *)
  mount_ip_addresses : string list;  (** mount_ip_addresses *)
  name : string;  (** name *)
  protocols : string list;  (** protocols *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  security_style : string;  (** security_style *)
  service_level : string;  (** service_level *)
  snapshot_directory_visible : bool;
      (** snapshot_directory_visible *)
  storage_quota_in_gb : float;  (** storage_quota_in_gb *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  throughput_in_mibps : float;  (** throughput_in_mibps *)
  volume_path : string;  (** volume_path *)
  volume_spec_name : string;  (** volume_spec_name *)
  data_protection_replication :
    azurerm_netapp_volume_group_sap_hana__volume__data_protection_replication
    list;
  data_protection_snapshot_policy :
    azurerm_netapp_volume_group_sap_hana__volume__data_protection_snapshot_policy
    list;
  export_policy_rule :
    azurerm_netapp_volume_group_sap_hana__volume__export_policy_rule
    list;
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__volume *)

type azurerm_netapp_volume_group_sap_hana = {
  account_name : string;  (** account_name *)
  application_identifier : string;  (** application_identifier *)
  group_description : string;  (** group_description *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_netapp_volume_group_sap_hana__timeouts option;
  volume : azurerm_netapp_volume_group_sap_hana__volume list;
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana *)

let azurerm_netapp_volume_group_sap_hana ?timeouts ~account_name
    ~application_identifier ~group_description ~location ~name
    ~resource_group_name ~volume __resource_id =
  let __resource_type = "azurerm_netapp_volume_group_sap_hana" in
  let __resource =
    {
      account_name;
      application_identifier;
      group_description;
      location;
      name;
      resource_group_name;
      timeouts;
      volume;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_volume_group_sap_hana __resource);
  ()
