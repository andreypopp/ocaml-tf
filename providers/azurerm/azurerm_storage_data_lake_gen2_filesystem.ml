(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ace = {
  id : string prop option; [@option]  (** id *)
  permissions : string prop;  (** permissions *)
  scope : string prop option; [@option]  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** ace *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_data_lake_gen2_filesystem = {
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner : string prop option; [@option]  (** owner *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  storage_account_id : string prop;  (** storage_account_id *)
  ace : ace list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_filesystem *)

let ace ?id ?scope ~permissions ~type_ () : ace =
  { id; permissions; scope; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_data_lake_gen2_filesystem ?group ?id ?owner
    ?properties ?timeouts ~name ~storage_account_id ~ace () :
    azurerm_storage_data_lake_gen2_filesystem =
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

type t = {
  group : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  properties : (string * string) list prop;
  storage_account_id : string prop;
}

let register ?tf_module ?group ?id ?owner ?properties ?timeouts ~name
    ~storage_account_id ~ace __resource_id =
  let __resource_type =
    "azurerm_storage_data_lake_gen2_filesystem"
  in
  let __resource =
    azurerm_storage_data_lake_gen2_filesystem ?group ?id ?owner
      ?properties ?timeouts ~name ~storage_account_id ~ace ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_data_lake_gen2_filesystem __resource);
  let __resource_attributes =
    ({
       group = Prop.computed __resource_type __resource_id "group";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       owner = Prop.computed __resource_type __resource_id "owner";
       properties =
         Prop.computed __resource_type __resource_id "properties";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes
