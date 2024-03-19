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

type azurerm_resource_management_private_link_association = {
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop;  (** management_group_id *)
  name : string prop option; [@option]  (** name *)
  public_network_access_enabled : bool prop;
      (** public_network_access_enabled *)
  resource_management_private_link_id : string prop;
      (** resource_management_private_link_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_management_private_link_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_resource_management_private_link_association ?id ?name
    ?timeouts ~management_group_id ~public_network_access_enabled
    ~resource_management_private_link_id () :
    azurerm_resource_management_private_link_association =
  {
    id;
    management_group_id;
    name;
    public_network_access_enabled;
    resource_management_private_link_id;
    timeouts;
  }

type t = {
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_management_private_link_id : string prop;
  tenant_id : string prop;
}

let register ?tf_module ?id ?name ?timeouts ~management_group_id
    ~public_network_access_enabled
    ~resource_management_private_link_id __resource_id =
  let __resource_type =
    "azurerm_resource_management_private_link_association"
  in
  let __resource =
    azurerm_resource_management_private_link_association ?id ?name
      ?timeouts ~management_group_id ~public_network_access_enabled
      ~resource_management_private_link_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_management_private_link_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       management_group_id =
         Prop.computed __resource_type __resource_id
           "management_group_id";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_management_private_link_id =
         Prop.computed __resource_type __resource_id
           "resource_management_private_link_id";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
