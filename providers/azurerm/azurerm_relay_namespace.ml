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

type azurerm_relay_namespace = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_relay_namespace *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_relay_namespace ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name () : azurerm_relay_namespace =
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
  id : string prop;
  location : string prop;
  metric_id : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~sku_name __id =
  let __type = "azurerm_relay_namespace" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       metric_id = Prop.computed __type __id "metric_id";
       name = Prop.computed __type __id "name";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_key = Prop.computed __type __id "primary_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_key = Prop.computed __type __id "secondary_key";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_relay_namespace
        (azurerm_relay_namespace ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~sku_name ());
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
