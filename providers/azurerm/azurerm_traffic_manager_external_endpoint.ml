(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** custom_header *)

type subnet = {
  first : string prop;  (** first *)
  last : string prop option; [@option]  (** last *)
  scope : float prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** subnet *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_traffic_manager_external_endpoint = {
  always_serve_enabled : bool prop option; [@option]
      (** always_serve_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  endpoint_location : string prop option; [@option]
      (** endpoint_location *)
  geo_mappings : string prop list option; [@option]
      (** geo_mappings *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  profile_id : string prop;  (** profile_id *)
  target : string prop;  (** target *)
  weight : float prop option; [@option]  (** weight *)
  custom_header : custom_header list;
  subnet : subnet list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint *)

let custom_header ~name ~value () : custom_header = { name; value }
let subnet ?last ?scope ~first () : subnet = { first; last; scope }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_traffic_manager_external_endpoint ?always_serve_enabled
    ?enabled ?endpoint_location ?geo_mappings ?id ?priority ?weight
    ?timeouts ~name ~profile_id ~target ~custom_header ~subnet () :
    azurerm_traffic_manager_external_endpoint =
  {
    always_serve_enabled;
    enabled;
    endpoint_location;
    geo_mappings;
    id;
    name;
    priority;
    profile_id;
    target;
    weight;
    custom_header;
    subnet;
    timeouts;
  }

type t = {
  always_serve_enabled : bool prop;
  enabled : bool prop;
  endpoint_location : string prop;
  geo_mappings : string list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  profile_id : string prop;
  target : string prop;
  weight : float prop;
}

let make ?always_serve_enabled ?enabled ?endpoint_location
    ?geo_mappings ?id ?priority ?weight ?timeouts ~name ~profile_id
    ~target ~custom_header ~subnet __id =
  let __type = "azurerm_traffic_manager_external_endpoint" in
  let __attrs =
    ({
       always_serve_enabled =
         Prop.computed __type __id "always_serve_enabled";
       enabled = Prop.computed __type __id "enabled";
       endpoint_location =
         Prop.computed __type __id "endpoint_location";
       geo_mappings = Prop.computed __type __id "geo_mappings";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       profile_id = Prop.computed __type __id "profile_id";
       target = Prop.computed __type __id "target";
       weight = Prop.computed __type __id "weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_traffic_manager_external_endpoint
        (azurerm_traffic_manager_external_endpoint
           ?always_serve_enabled ?enabled ?endpoint_location
           ?geo_mappings ?id ?priority ?weight ?timeouts ~name
           ~profile_id ~target ~custom_header ~subnet ());
    attrs = __attrs;
  }

let register ?tf_module ?always_serve_enabled ?enabled
    ?endpoint_location ?geo_mappings ?id ?priority ?weight ?timeouts
    ~name ~profile_id ~target ~custom_header ~subnet __id =
  let (r : _ Tf_core.resource) =
    make ?always_serve_enabled ?enabled ?endpoint_location
      ?geo_mappings ?id ?priority ?weight ?timeouts ~name ~profile_id
      ~target ~custom_header ~subnet __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
