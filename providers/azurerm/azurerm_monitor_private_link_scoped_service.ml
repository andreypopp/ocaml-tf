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

type azurerm_monitor_private_link_scoped_service = {
  id : string prop option; [@option]  (** id *)
  linked_resource_id : string prop;  (** linked_resource_id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope_name : string prop;  (** scope_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_private_link_scoped_service *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_monitor_private_link_scoped_service ?id ?timeouts
    ~linked_resource_id ~name ~resource_group_name ~scope_name () :
    azurerm_monitor_private_link_scoped_service =
  {
    id;
    linked_resource_id;
    name;
    resource_group_name;
    scope_name;
    timeouts;
  }

type t = {
  id : string prop;
  linked_resource_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_name : string prop;
}

let register ?tf_module ?id ?timeouts ~linked_resource_id ~name
    ~resource_group_name ~scope_name __resource_id =
  let __resource_type =
    "azurerm_monitor_private_link_scoped_service"
  in
  let __resource =
    azurerm_monitor_private_link_scoped_service ?id ?timeouts
      ~linked_resource_id ~name ~resource_group_name ~scope_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_private_link_scoped_service __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       linked_resource_id =
         Prop.computed __resource_type __resource_id
           "linked_resource_id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       scope_name =
         Prop.computed __resource_type __resource_id "scope_name";
     }
      : t)
  in
  __resource_attributes
