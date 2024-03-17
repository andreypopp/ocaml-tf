(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_blob_inventory_policy__rules__filter = {
  blob_types : string prop list;  (** blob_types *)
  exclude_prefixes : string prop list option; [@option]
      (** exclude_prefixes *)
  include_blob_versions : bool prop option; [@option]
      (** include_blob_versions *)
  include_deleted : bool prop option; [@option]
      (** include_deleted *)
  include_snapshots : bool prop option; [@option]
      (** include_snapshots *)
  prefix_match : string prop list option; [@option]
      (** prefix_match *)
}
[@@deriving yojson_of]
(** azurerm_storage_blob_inventory_policy__rules__filter *)

type azurerm_storage_blob_inventory_policy__rules = {
  format : string prop;  (** format *)
  name : string prop;  (** name *)
  schedule : string prop;  (** schedule *)
  schema_fields : string prop list;  (** schema_fields *)
  scope : string prop;  (** scope *)
  storage_container_name : string prop;
      (** storage_container_name *)
  filter : azurerm_storage_blob_inventory_policy__rules__filter list;
}
[@@deriving yojson_of]
(** azurerm_storage_blob_inventory_policy__rules *)

type azurerm_storage_blob_inventory_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_blob_inventory_policy__timeouts *)

type azurerm_storage_blob_inventory_policy = {
  id : string prop option; [@option]  (** id *)
  storage_account_id : string prop;  (** storage_account_id *)
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
