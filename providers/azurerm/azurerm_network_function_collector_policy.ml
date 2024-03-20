(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ipfx_emission = {
  destination_types : string prop list;  (** destination_types *)
}
[@@deriving yojson_of]
(** ipfx_emission *)

type ipfx_ingestion = {
  source_resource_ids : string prop list;  (** source_resource_ids *)
}
[@@deriving yojson_of]
(** ipfx_ingestion *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_function_collector_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  traffic_collector_id : string prop;  (** traffic_collector_id *)
  ipfx_emission : ipfx_emission list;
  ipfx_ingestion : ipfx_ingestion list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_function_collector_policy *)

let ipfx_emission ~destination_types () : ipfx_emission =
  { destination_types }

let ipfx_ingestion ~source_resource_ids () : ipfx_ingestion =
  { source_resource_ids }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_function_collector_policy ?id ?tags ?timeouts
    ~location ~name ~traffic_collector_id ~ipfx_emission
    ~ipfx_ingestion () : azurerm_network_function_collector_policy =
  {
    id;
    location;
    name;
    tags;
    traffic_collector_id;
    ipfx_emission;
    ipfx_ingestion;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  traffic_collector_id : string prop;
}

let make ?id ?tags ?timeouts ~location ~name ~traffic_collector_id
    ~ipfx_emission ~ipfx_ingestion __id =
  let __type = "azurerm_network_function_collector_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       traffic_collector_id =
         Prop.computed __type __id "traffic_collector_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_function_collector_policy
        (azurerm_network_function_collector_policy ?id ?tags
           ?timeouts ~location ~name ~traffic_collector_id
           ~ipfx_emission ~ipfx_ingestion ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~traffic_collector_id ~ipfx_emission ~ipfx_ingestion __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~traffic_collector_id
      ~ipfx_emission ~ipfx_ingestion __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
