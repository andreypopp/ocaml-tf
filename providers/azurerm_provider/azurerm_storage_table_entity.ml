(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_table_entity__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_table_entity__timeouts *)

type azurerm_storage_table_entity = {
  entity : (string * string) list;  (** entity *)
  partition_key : string;  (** partition_key *)
  row_key : string;  (** row_key *)
  timeouts : azurerm_storage_table_entity__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_table_entity *)

let azurerm_storage_table_entity ?timeouts ~entity ~partition_key
    ~row_key __resource_id =
  let __resource_type = "azurerm_storage_table_entity" in
  let __resource = { entity; partition_key; row_key; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_table_entity __resource);
  ()
