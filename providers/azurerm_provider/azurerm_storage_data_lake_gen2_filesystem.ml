(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_data_lake_gen2_filesystem__ace = {
  id : string prop option; [@option]  (** id *)
  permissions : string prop;  (** permissions *)
  scope : string prop option; [@option]  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_filesystem__ace *)

type azurerm_storage_data_lake_gen2_filesystem__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_filesystem__timeouts *)

type azurerm_storage_data_lake_gen2_filesystem = {
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner : string prop option; [@option]  (** owner *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  storage_account_id : string prop;  (** storage_account_id *)
  ace : azurerm_storage_data_lake_gen2_filesystem__ace list;
  timeouts :
    azurerm_storage_data_lake_gen2_filesystem__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_filesystem *)

let azurerm_storage_data_lake_gen2_filesystem ?group ?id ?owner
    ?properties ?timeouts ~name ~storage_account_id ~ace
    __resource_id =
  let __resource_type =
    "azurerm_storage_data_lake_gen2_filesystem"
  in
  let __resource =
    {
      group;
      id;
      name;
      owner;
      properties;
      storage_account_id;
      ace;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_data_lake_gen2_filesystem __resource);
  ()
