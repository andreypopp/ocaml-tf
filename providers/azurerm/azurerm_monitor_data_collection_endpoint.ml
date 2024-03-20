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

type azurerm_monitor_data_collection_endpoint = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_endpoint *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_data_collection_endpoint ?description ?id ?kind
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name () :
    azurerm_monitor_data_collection_endpoint =
  {
    description;
    id;
    kind;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  configuration_access_endpoint : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  logs_ingestion_endpoint : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?description ?id ?kind ?public_network_access_enabled ?tags
    ?timeouts ~location ~name ~resource_group_name __id =
  let __type = "azurerm_monitor_data_collection_endpoint" in
  let __attrs =
    ({
       configuration_access_endpoint =
         Prop.computed __type __id "configuration_access_endpoint";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       logs_ingestion_endpoint =
         Prop.computed __type __id "logs_ingestion_endpoint";
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
      yojson_of_azurerm_monitor_data_collection_endpoint
        (azurerm_monitor_data_collection_endpoint ?description ?id
           ?kind ?public_network_access_enabled ?tags ?timeouts
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kind
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kind ?public_network_access_enabled ?tags
      ?timeouts ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
