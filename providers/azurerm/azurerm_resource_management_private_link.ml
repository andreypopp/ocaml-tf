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

type azurerm_resource_management_private_link = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_management_private_link *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_resource_management_private_link ?id ?timeouts ~location
    ~name ~resource_group_name () :
    azurerm_resource_management_private_link =
  { id; location; name; resource_group_name; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_resource_management_private_link" in
  let __resource =
    azurerm_resource_management_private_link ?id ?timeouts ~location
      ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_management_private_link __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
