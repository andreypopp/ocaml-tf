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

type azurerm_portal_dashboard = {
  dashboard_properties : string prop;  (** dashboard_properties *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_portal_dashboard *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_portal_dashboard ?id ?tags ?timeouts
    ~dashboard_properties ~location ~name ~resource_group_name () :
    azurerm_portal_dashboard =
  {
    dashboard_properties;
    id;
    location;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  dashboard_properties : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~dashboard_properties ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_portal_dashboard" in
  let __attrs =
    ({
       dashboard_properties =
         Prop.computed __type __id "dashboard_properties";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_portal_dashboard
        (azurerm_portal_dashboard ?id ?tags ?timeouts
           ~dashboard_properties ~location ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~dashboard_properties
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~dashboard_properties ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
