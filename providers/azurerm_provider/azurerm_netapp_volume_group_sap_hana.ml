(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_volume_group_sap_hana__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__timeouts *)

type azurerm_netapp_volume_group_sap_hana__volume__data_protection_replication = {
  endpoint_type : string prop option; [@option]  (** endpoint_type *)
  remote_volume_location : string prop;
      (** remote_volume_location *)
  remote_volume_resource_id : string prop;
      (** remote_volume_resource_id *)
  replication_frequency : string prop;  (** replication_frequency *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__volume__data_protection_replication *)

type azurerm_netapp_volume_group_sap_hana__volume__data_protection_snapshot_policy = {
  snapshot_policy_id : string prop;  (** snapshot_policy_id *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__volume__data_protection_snapshot_policy *)

type azurerm_netapp_volume_group_sap_hana__volume__export_policy_rule = {
  allowed_clients : string prop;  (** allowed_clients *)
  nfsv3_enabled : bool prop;  (** nfsv3_enabled *)
  nfsv41_enabled : bool prop;  (** nfsv41_enabled *)
  root_access_enabled : bool prop option; [@option]
      (** root_access_enabled *)
  rule_index : float prop;  (** rule_index *)
  unix_read_only : bool prop option; [@option]  (** unix_read_only *)
  unix_read_write : bool prop option; [@option]
      (** unix_read_write *)
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana__volume__export_policy_rule *)

type azurerm_netapp_volume_group_sap_hana__volume = {
  capacity_pool_id : string prop;  (** capacity_pool_id *)
  id : string prop;  (** id *)
  mount_ip_addresses : string prop list;  (** mount_ip_addresses *)
  name : string prop;  (** name *)
  protocols : string prop list;  (** protocols *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  security_style : string prop;  (** security_style *)
  service_level : string prop;  (** service_level *)
  snapshot_directory_visible : bool prop;
      (** snapshot_directory_visible *)
  storage_quota_in_gb : float prop;  (** storage_quota_in_gb *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  throughput_in_mibps : float prop;  (** throughput_in_mibps *)
  volume_path : string prop;  (** volume_path *)
  volume_spec_name : string prop;  (** volume_spec_name *)
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
  account_name : string prop;  (** account_name *)
  application_identifier : string prop;
      (** application_identifier *)
  group_description : string prop;  (** group_description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_netapp_volume_group_sap_hana__timeouts option;
  volume : azurerm_netapp_volume_group_sap_hana__volume list;
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana *)

let azurerm_netapp_volume_group_sap_hana ?id ?timeouts ~account_name
    ~application_identifier ~group_description ~location ~name
    ~resource_group_name ~volume __resource_id =
  let __resource_type = "azurerm_netapp_volume_group_sap_hana" in
  let __resource =
    {
      account_name;
      application_identifier;
      group_description;
      id;
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
