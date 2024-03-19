(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type volume__data_protection_replication = {
  endpoint_type : string prop option; [@option]  (** endpoint_type *)
  remote_volume_location : string prop;
      (** remote_volume_location *)
  remote_volume_resource_id : string prop;
      (** remote_volume_resource_id *)
  replication_frequency : string prop;  (** replication_frequency *)
}
[@@deriving yojson_of]
(** volume__data_protection_replication *)

type volume__data_protection_snapshot_policy = {
  snapshot_policy_id : string prop;  (** snapshot_policy_id *)
}
[@@deriving yojson_of]
(** volume__data_protection_snapshot_policy *)

type volume__export_policy_rule = {
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
(** volume__export_policy_rule *)

type volume = {
  capacity_pool_id : string prop;  (** capacity_pool_id *)
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
    volume__data_protection_replication list;
  data_protection_snapshot_policy :
    volume__data_protection_snapshot_policy list;
  export_policy_rule : volume__export_policy_rule list;
}
[@@deriving yojson_of]
(** volume *)

type azurerm_netapp_volume_group_sap_hana = {
  account_name : string prop;  (** account_name *)
  application_identifier : string prop;
      (** application_identifier *)
  group_description : string prop;  (** group_description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
  volume : volume list;
}
[@@deriving yojson_of]
(** azurerm_netapp_volume_group_sap_hana *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let volume__data_protection_replication ?endpoint_type
    ~remote_volume_location ~remote_volume_resource_id
    ~replication_frequency () : volume__data_protection_replication =
  {
    endpoint_type;
    remote_volume_location;
    remote_volume_resource_id;
    replication_frequency;
  }

let volume__data_protection_snapshot_policy ~snapshot_policy_id () :
    volume__data_protection_snapshot_policy =
  { snapshot_policy_id }

let volume__export_policy_rule ?root_access_enabled ?unix_read_only
    ?unix_read_write ~allowed_clients ~nfsv3_enabled ~nfsv41_enabled
    ~rule_index () : volume__export_policy_rule =
  {
    allowed_clients;
    nfsv3_enabled;
    nfsv41_enabled;
    root_access_enabled;
    rule_index;
    unix_read_only;
    unix_read_write;
  }

let volume ?proximity_placement_group_id ?tags ~capacity_pool_id
    ~name ~protocols ~security_style ~service_level
    ~snapshot_directory_visible ~storage_quota_in_gb ~subnet_id
    ~throughput_in_mibps ~volume_path ~volume_spec_name
    ~data_protection_replication ~data_protection_snapshot_policy
    ~export_policy_rule () : volume =
  {
    capacity_pool_id;
    name;
    protocols;
    proximity_placement_group_id;
    security_style;
    service_level;
    snapshot_directory_visible;
    storage_quota_in_gb;
    subnet_id;
    tags;
    throughput_in_mibps;
    volume_path;
    volume_spec_name;
    data_protection_replication;
    data_protection_snapshot_policy;
    export_policy_rule;
  }

let azurerm_netapp_volume_group_sap_hana ?id ?timeouts ~account_name
    ~application_identifier ~group_description ~location ~name
    ~resource_group_name ~volume () :
    azurerm_netapp_volume_group_sap_hana =
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

type t = {
  account_name : string prop;
  application_identifier : string prop;
  group_description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~account_name
    ~application_identifier ~group_description ~location ~name
    ~resource_group_name ~volume __resource_id =
  let __resource_type = "azurerm_netapp_volume_group_sap_hana" in
  let __resource =
    azurerm_netapp_volume_group_sap_hana ?id ?timeouts ~account_name
      ~application_identifier ~group_description ~location ~name
      ~resource_group_name ~volume ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_volume_group_sap_hana __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       application_identifier =
         Prop.computed __resource_type __resource_id
           "application_identifier";
       group_description =
         Prop.computed __resource_type __resource_id
           "group_description";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
