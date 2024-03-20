(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?name ?timeouts ~management_group_id
    ~public_network_access_enabled
    ~resource_management_private_link_id __id =
  let __type =
    "azurerm_resource_management_private_link_association"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_management_private_link_id =
         Prop.computed __type __id
           "resource_management_private_link_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_management_private_link_association
        (azurerm_resource_management_private_link_association ?id
           ?name ?timeouts ~management_group_id
           ~public_network_access_enabled
           ~resource_management_private_link_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~management_group_id
    ~public_network_access_enabled
    ~resource_management_private_link_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~management_group_id
      ~public_network_access_enabled
      ~resource_management_private_link_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
