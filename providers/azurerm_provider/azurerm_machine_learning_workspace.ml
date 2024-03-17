(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_workspace__encryption = {
  key_id : string;  (** key_id *)
  key_vault_id : string;  (** key_vault_id *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__encryption *)

type azurerm_machine_learning_workspace__feature_store = {
  computer_spark_runtime_version : string option; [@option]
      (** computer_spark_runtime_version *)
  offline_connection_name : string option; [@option]
      (** offline_connection_name *)
  online_connection_name : string option; [@option]
      (** online_connection_name *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__feature_store *)

type azurerm_machine_learning_workspace__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__identity *)

type azurerm_machine_learning_workspace__managed_network = {
  isolation_mode : string option; [@option]  (** isolation_mode *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__managed_network *)

type azurerm_machine_learning_workspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_workspace__timeouts *)

type azurerm_machine_learning_workspace = {
  application_insights_id : string;  (** application_insights_id *)
  container_registry_id : string option; [@option]
      (** container_registry_id *)
  description : string option; [@option]  (** description *)
  friendly_name : string option; [@option]  (** friendly_name *)
  high_business_impact : bool option; [@option]
      (** high_business_impact *)
  id : string option; [@option]  (** id *)
  image_build_compute_name : string option; [@option]
      (** image_build_compute_name *)
  key_vault_id : string;  (** key_vault_id *)
  kind : string option; [@option]  (** kind *)
  location : string;  (** location *)
  name : string;  (** name *)
  primary_user_assigned_identity : string option; [@option]
      (** primary_user_assigned_identity *)
  public_access_behind_virtual_network_enabled : bool option;
      [@option]
      (** public_access_behind_virtual_network_enabled *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string option; [@option]  (** sku_name *)
  storage_account_id : string;  (** storage_account_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  v1_legacy_mode_enabled : bool option; [@option]
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
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_workspace __resource);
  ()
