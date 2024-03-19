(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_sync_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_sync_id : string prop;  (** storage_sync_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync_group *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_storage_sync_group ?id ?timeouts ~name ~storage_sync_id
    () : azurerm_storage_sync_group =
  { id; name; storage_sync_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  storage_sync_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~storage_sync_id
    __resource_id =
  let __resource_type = "azurerm_storage_sync_group" in
  let __resource =
    azurerm_storage_sync_group ?id ?timeouts ~name ~storage_sync_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_sync_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       storage_sync_id =
         Prop.computed __resource_type __resource_id
           "storage_sync_id";
     }
      : t)
  in
  __resource_attributes
