(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_data_lake_gen2_path__ace = {
  id : string option; [@option]  (** id *)
  permissions : string;  (** permissions *)
  scope : string option; [@option]  (** scope *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_path__ace *)

type azurerm_storage_data_lake_gen2_path__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_path__timeouts *)

type azurerm_storage_data_lake_gen2_path = {
  filesystem_name : string;  (** filesystem_name *)
  path : string;  (** path *)
  resource : string;  (** resource *)
  storage_account_id : string;  (** storage_account_id *)
  ace : azurerm_storage_data_lake_gen2_path__ace list;
  timeouts : azurerm_storage_data_lake_gen2_path__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_path *)

let azurerm_storage_data_lake_gen2_path ?timeouts ~filesystem_name
    ~path ~resource ~storage_account_id ~ace __resource_id =
  let __resource_type = "azurerm_storage_data_lake_gen2_path" in
  let __resource =
    {
      filesystem_name;
      path;
      resource;
      storage_account_id;
      ace;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_data_lake_gen2_path __resource);
  ()
