(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rules__filter = {
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
(** rules__filter *)

type rules = {
  format : string prop;  (** format *)
  name : string prop;  (** name *)
  schedule : string prop;  (** schedule *)
  schema_fields : string prop list;  (** schema_fields *)
  scope : string prop;  (** scope *)
  storage_container_name : string prop;
      (** storage_container_name *)
  filter : rules__filter list;
}
[@@deriving yojson_of]
(** rules *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_blob_inventory_policy = {
  id : string prop option; [@option]  (** id *)
  storage_account_id : string prop;  (** storage_account_id *)
  rules : rules list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_blob_inventory_policy *)

let rules__filter ?exclude_prefixes ?include_blob_versions
    ?include_deleted ?include_snapshots ?prefix_match ~blob_types ()
    : rules__filter =
  {
    blob_types;
    exclude_prefixes;
    include_blob_versions;
    include_deleted;
    include_snapshots;
    prefix_match;
  }

let rules ~format ~name ~schedule ~schema_fields ~scope
    ~storage_container_name ~filter () : rules =
  {
    format;
    name;
    schedule;
    schema_fields;
    scope;
    storage_container_name;
    filter;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_blob_inventory_policy ?id ?timeouts
    ~storage_account_id ~rules () :
    azurerm_storage_blob_inventory_policy =
  { id; storage_account_id; rules; timeouts }

type t = { id : string prop; storage_account_id : string prop }

let register ?tf_module ?id ?timeouts ~storage_account_id ~rules
    __resource_id =
  let __resource_type = "azurerm_storage_blob_inventory_policy" in
  let __resource =
    azurerm_storage_blob_inventory_policy ?id ?timeouts
      ~storage_account_id ~rules ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_blob_inventory_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes
