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

type azurerm_express_route_gateway = {
  allow_non_virtual_wan_traffic : bool prop option; [@option]
      (** allow_non_virtual_wan_traffic *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scale_units : float prop;  (** scale_units *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_gateway *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_gateway ?allow_non_virtual_wan_traffic ?id
    ?tags ?timeouts ~location ~name ~resource_group_name ~scale_units
    ~virtual_hub_id () : azurerm_express_route_gateway =
  {
    allow_non_virtual_wan_traffic;
    id;
    location;
    name;
    resource_group_name;
    scale_units;
    tags;
    virtual_hub_id;
    timeouts;
  }

type t = {
  allow_non_virtual_wan_traffic : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
}

let make ?allow_non_virtual_wan_traffic ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~scale_units ~virtual_hub_id __id =
  let __type = "azurerm_express_route_gateway" in
  let __attrs =
    ({
       allow_non_virtual_wan_traffic =
         Prop.computed __type __id "allow_non_virtual_wan_traffic";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scale_units = Prop.computed __type __id "scale_units";
       tags = Prop.computed __type __id "tags";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_gateway
        (azurerm_express_route_gateway ?allow_non_virtual_wan_traffic
           ?id ?tags ?timeouts ~location ~name ~resource_group_name
           ~scale_units ~virtual_hub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_non_virtual_wan_traffic ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~scale_units
    ~virtual_hub_id __id =
  let (r : _ Tf_core.resource) =
    make ?allow_non_virtual_wan_traffic ?id ?tags ?timeouts ~location
      ~name ~resource_group_name ~scale_units ~virtual_hub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
