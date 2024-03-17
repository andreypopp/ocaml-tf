(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_data_lake_gen2_path__ace = {
  id : string prop option; [@option]  (** id *)
  permissions : string prop;  (** permissions *)
  scope : string prop option; [@option]  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_path__ace *)

type azurerm_storage_data_lake_gen2_path__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_path__timeouts *)

type azurerm_storage_data_lake_gen2_path = {
  filesystem_name : string prop;  (** filesystem_name *)
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  owner : string prop option; [@option]  (** owner *)
  path : string prop;  (** path *)
  resource : string prop;  (** resource *)
  storage_account_id : string prop;  (** storage_account_id *)
  ace : azurerm_storage_data_lake_gen2_path__ace list;
  timeouts : azurerm_storage_data_lake_gen2_path__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_path *)

type t = {
  filesystem_name : string prop;
  group : string prop;
  id : string prop;
  owner : string prop;
  path : string prop;
  resource : string prop;
  storage_account_id : string prop;
}

let azurerm_storage_data_lake_gen2_path ?group ?id ?owner ?timeouts
    ~filesystem_name ~path ~resource ~storage_account_id ~ace
    __resource_id =
  let __resource_type = "azurerm_storage_data_lake_gen2_path" in
  let __resource =
    ({
       filesystem_name;
       group;
       id;
       owner;
       path;
       resource;
       storage_account_id;
       ace;
       timeouts;
     }
      : azurerm_storage_data_lake_gen2_path)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_data_lake_gen2_path __resource);
  let __resource_attributes =
    ({
       filesystem_name =
         Prop.computed __resource_type __resource_id
           "filesystem_name";
       group = Prop.computed __resource_type __resource_id "group";
       id = Prop.computed __resource_type __resource_id "id";
       owner = Prop.computed __resource_type __resource_id "owner";
       path = Prop.computed __resource_type __resource_id "path";
       resource =
         Prop.computed __resource_type __resource_id "resource";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes
