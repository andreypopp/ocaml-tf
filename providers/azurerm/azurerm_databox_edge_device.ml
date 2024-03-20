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

type device_properties = {
  capacity : float prop;  (** capacity *)
  configured_role_types : string prop list;
      (** configured_role_types *)
  culture : string prop;  (** culture *)
  hcs_version : string prop;  (** hcs_version *)
  model : string prop;  (** model *)
  node_count : float prop;  (** node_count *)
  serial_number : string prop;  (** serial_number *)
  software_version : string prop;  (** software_version *)
  status : string prop;  (** status *)
  time_zone : string prop;  (** time_zone *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_databox_edge_device = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databox_edge_device *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_databox_edge_device ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name () : azurerm_databox_edge_device =
  {
    id;
    location;
    name;
    resource_group_name;
    sku_name;
    tags;
    timeouts;
  }

type t = {
  device_properties : device_properties list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~sku_name __id =
  let __type = "azurerm_databox_edge_device" in
  let __attrs =
    ({
       device_properties =
         Prop.computed __type __id "device_properties";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_databox_edge_device
        (azurerm_databox_edge_device ?id ?tags ?timeouts ~location
           ~name ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
