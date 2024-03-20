(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~location ~name ~resource_group_name __id =
  let __type = "azurerm_resource_management_private_link" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_management_private_link
        (azurerm_resource_management_private_link ?id ?timeouts
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
