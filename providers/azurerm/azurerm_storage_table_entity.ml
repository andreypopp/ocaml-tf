(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_table_entity__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_table_entity__timeouts *)

type azurerm_storage_table_entity = {
  entity : (string * string prop) list;  (** entity *)
  id : string prop option; [@option]  (** id *)
  partition_key : string prop;  (** partition_key *)
  row_key : string prop;  (** row_key *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  storage_table_id : string prop option; [@option]
      (** storage_table_id *)
  table_name : string prop option; [@option]  (** table_name *)
  timeouts : azurerm_storage_table_entity__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_table_entity *)

type t = {
  entity : (string * string) list prop;
  id : string prop;
  partition_key : string prop;
  row_key : string prop;
  storage_account_name : string prop;
  storage_table_id : string prop;
  table_name : string prop;
}

let azurerm_storage_table_entity ?id ?storage_account_name
    ?storage_table_id ?table_name ?timeouts ~entity ~partition_key
    ~row_key __resource_id =
  let __resource_type = "azurerm_storage_table_entity" in
  let __resource =
    ({
       entity;
       id;
       partition_key;
       row_key;
       storage_account_name;
       storage_table_id;
       table_name;
       timeouts;
     }
      : azurerm_storage_table_entity)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_table_entity __resource);
  let __resource_attributes =
    ({
       entity = Prop.computed __resource_type __resource_id "entity";
       id = Prop.computed __resource_type __resource_id "id";
       partition_key =
         Prop.computed __resource_type __resource_id "partition_key";
       row_key =
         Prop.computed __resource_type __resource_id "row_key";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
       storage_table_id =
         Prop.computed __resource_type __resource_id
           "storage_table_id";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
     }
      : t)
  in
  __resource_attributes
