(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_desktop_workspace = {
  description : string prop option; [@option]  (** description *)
  friendly_name : string prop option; [@option]  (** friendly_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_workspace *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_workspace ?description ?friendly_name ?id
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name () : azurerm_virtual_desktop_workspace =
  {
    description;
    friendly_name;
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  description : string prop;
  friendly_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?description ?friendly_name ?id
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_virtual_desktop_workspace" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       friendly_name = Prop.computed __type __id "friendly_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_workspace
        (azurerm_virtual_desktop_workspace ?description
           ?friendly_name ?id ?public_network_access_enabled ?tags
           ?timeouts ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?friendly_name ?id
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?friendly_name ?id
      ?public_network_access_enabled ?tags ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
