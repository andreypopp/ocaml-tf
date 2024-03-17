(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_blob_inventory_policy__rules__filter = {
  blob_types : string list;  (** blob_types *)
  exclude_prefixes : string list option; [@option]
      (** exclude_prefixes *)
  include_blob_versions : bool option; [@option]
      (** include_blob_versions *)
  include_deleted : bool option; [@option]  (** include_deleted *)
  include_snapshots : bool option; [@option]
      (** include_snapshots *)
  prefix_match : string list option; [@option]  (** prefix_match *)
}
[@@deriving yojson_of]
(** azurerm_storage_blob_inventory_policy__rules__filter *)

type azurerm_storage_blob_inventory_policy__rules = {
  format : string;  (** format *)
  name : string;  (** name *)
  schedule : string;  (** schedule *)
  schema_fields : string list;  (** schema_fields *)
  scope : string;  (** scope *)
  storage_container_name : string;  (** storage_container_name *)
  filter : azurerm_storage_blob_inventory_policy__rules__filter list;
}
[@@deriving yojson_of]
(** azurerm_storage_blob_inventory_policy__rules *)

type azurerm_storage_blob_inventory_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_blob_inventory_policy__timeouts *)

type azurerm_storage_blob_inventory_policy = {
  id : string option; [@option]  (** id *)
  storage_account_id : string;  (** storage_account_id *)
  rules : azurerm_storage_blob_inventory_policy__rules list;
  timeouts : azurerm_storage_blob_inventory_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_blob_inventory_policy *)

let azurerm_storage_blob_inventory_policy ?id ?timeouts
    ~storage_account_id ~rules __resource_id =
  let __resource_type = "azurerm_storage_blob_inventory_policy" in
  let __resource = { id; storage_account_id; rules; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_blob_inventory_policy __resource);
  ()
