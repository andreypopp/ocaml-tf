(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_workspace__encryption = {
  key_id : string prop;  (** key_id *)
  key_vault_id : string prop;  (** key_vault_id *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__encryption *)

type azurerm_machine_learning_workspace__feature_store = {
  computer_spark_runtime_version : string prop option; [@option]
      (** computer_spark_runtime_version *)
  offline_connection_name : string prop option; [@option]
      (** offline_connection_name *)
  online_connection_name : string prop option; [@option]
      (** online_connection_name *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__feature_store *)

type azurerm_machine_learning_workspace__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__identity *)

type azurerm_machine_learning_workspace__managed_network = {
  isolation_mode : string prop option; [@option]
      (** isolation_mode *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__managed_network *)

type azurerm_machine_learning_workspace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__timeouts *)

type azurerm_machine_learning_workspace = {
  application_insights_id : string prop;
      (** application_insights_id *)
  container_registry_id : string prop option; [@option]
      (** container_registry_id *)
  description : string prop option; [@option]  (** description *)
  friendly_name : string prop option; [@option]  (** friendly_name *)
  high_business_impact : bool prop option; [@option]
      (** high_business_impact *)
  id : string prop option; [@option]  (** id *)
  image_build_compute_name : string prop option; [@option]
      (** image_build_compute_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  primary_user_assigned_identity : string prop option; [@option]
      (** primary_user_assigned_identity *)
  public_access_behind_virtual_network_enabled : bool prop option;
      [@option]
      (** public_access_behind_virtual_network_enabled *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop option; [@option]  (** sku_name *)
  storage_account_id : string prop;  (** storage_account_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  v1_legacy_mode_enabled : bool prop option; [@option]
      (** v1_legacy_mode_enabled *)
  encryption : azurerm_machine_learning_workspace__encryption list;
  feature_store :
    azurerm_machine_learning_workspace__feature_store list;
  identity : azurerm_machine_learning_workspace__identity list;
  managed_network :
    azurerm_machine_learning_workspace__managed_network list;
  timeouts : azurerm_machine_learning_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace *)

type t = {
  application_insights_id : string prop;
  container_registry_id : string prop;
  description : string prop;
  discovery_url : string prop;
  friendly_name : string prop;
  high_business_impact : bool prop;
  id : string prop;
  image_build_compute_name : string prop;
  key_vault_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  primary_user_assigned_identity : string prop;
  public_access_behind_virtual_network_enabled : bool prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  v1_legacy_mode_enabled : bool prop;
  workspace_id : string prop;
}

let azurerm_machine_learning_workspace ?container_registry_id
    ?description ?friendly_name ?high_business_impact ?id
    ?image_build_compute_name ?kind ?primary_user_assigned_identity
    ?public_access_behind_virtual_network_enabled
    ?public_network_access_enabled ?sku_name ?tags
    ?v1_legacy_mode_enabled ?timeouts ~application_insights_id
    ~key_vault_id ~location ~name ~resource_group_name
    ~storage_account_id ~encryption ~feature_store ~identity
    ~managed_network __resource_id =
  let __resource_type = "azurerm_machine_learning_workspace" in
  let __resource =
    ({
       application_insights_id;
       container_registry_id;
       description;
       friendly_name;
       high_business_impact;
       id;
       image_build_compute_name;
       key_vault_id;
       kind;
       location;
       name;
       primary_user_assigned_identity;
       public_access_behind_virtual_network_enabled;
       public_network_access_enabled;
       resource_group_name;
       sku_name;
       storage_account_id;
       tags;
       v1_legacy_mode_enabled;
       encryption;
       feature_store;
       identity;
       managed_network;
       timeouts;
     }
      : azurerm_machine_learning_workspace)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_workspace __resource);
  let __resource_attributes =
    ({
       application_insights_id =
         Prop.computed __resource_type __resource_id
           "application_insights_id";
       container_registry_id =
         Prop.computed __resource_type __resource_id
           "container_registry_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       discovery_url =
         Prop.computed __resource_type __resource_id "discovery_url";
       friendly_name =
         Prop.computed __resource_type __resource_id "friendly_name";
       high_business_impact =
         Prop.computed __resource_type __resource_id
           "high_business_impact";
       id = Prop.computed __resource_type __resource_id "id";
       image_build_compute_name =
         Prop.computed __resource_type __resource_id
           "image_build_compute_name";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       kind = Prop.computed __resource_type __resource_id "kind";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       primary_user_assigned_identity =
         Prop.computed __resource_type __resource_id
           "primary_user_assigned_identity";
       public_access_behind_virtual_network_enabled =
         Prop.computed __resource_type __resource_id
           "public_access_behind_virtual_network_enabled";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       v1_legacy_mode_enabled =
         Prop.computed __resource_type __resource_id
           "v1_legacy_mode_enabled";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
