(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_container = {
  container_access_type : string prop option; [@option]
      (** container_access_type *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  storage_account_name : string prop;  (** storage_account_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_container *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_container ?container_access_type ?id ?metadata
    ?timeouts ~name ~storage_account_name () :
    azurerm_storage_container =
  {
    container_access_type;
    id;
    metadata;
    name;
    storage_account_name;
    timeouts;
  }

type t = {
  container_access_type : string prop;
  has_immutability_policy : bool prop;
  has_legal_hold : bool prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

let register ?tf_module ?container_access_type ?id ?metadata
    ?timeouts ~name ~storage_account_name __resource_id =
  let __resource_type = "azurerm_storage_container" in
  let __resource =
    azurerm_storage_container ?container_access_type ?id ?metadata
      ?timeouts ~name ~storage_account_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_container __resource);
  let __resource_attributes =
    ({
       container_access_type =
         Prop.computed __resource_type __resource_id
           "container_access_type";
       has_immutability_policy =
         Prop.computed __resource_type __resource_id
           "has_immutability_policy";
       has_legal_hold =
         Prop.computed __resource_type __resource_id "has_legal_hold";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       resource_manager_id =
         Prop.computed __resource_type __resource_id
           "resource_manager_id";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
     }
      : t)
  in
  __resource_attributes
