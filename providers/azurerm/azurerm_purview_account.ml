(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type managed_resources = {
  event_hub_namespace_id : string prop;
      (** event_hub_namespace_id *)
  resource_group_id : string prop;  (** resource_group_id *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]

type azurerm_purview_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_resource_group_name : string prop option; [@option]
      (** managed_resource_group_name *)
  name : string prop;  (** name *)
  public_network_enabled : bool prop option; [@option]
      (** public_network_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_purview_account *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_purview_account ?id ?managed_resource_group_name
    ?public_network_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity () : azurerm_purview_account =
  {
    id;
    location;
    managed_resource_group_name;
    name;
    public_network_enabled;
    resource_group_name;
    tags;
    identity;
    timeouts;
  }

type t = {
  atlas_kafka_endpoint_primary_connection_string : string prop;
  atlas_kafka_endpoint_secondary_connection_string : string prop;
  catalog_endpoint : string prop;
  guardian_endpoint : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  managed_resources : managed_resources list prop;
  name : string prop;
  public_network_enabled : bool prop;
  resource_group_name : string prop;
  scan_endpoint : string prop;
  tags : (string * string) list prop;
}

let make ?id ?managed_resource_group_name ?public_network_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name ~identity
    __id =
  let __type = "azurerm_purview_account" in
  let __attrs =
    ({
       atlas_kafka_endpoint_primary_connection_string =
         Prop.computed __type __id
           "atlas_kafka_endpoint_primary_connection_string";
       atlas_kafka_endpoint_secondary_connection_string =
         Prop.computed __type __id
           "atlas_kafka_endpoint_secondary_connection_string";
       catalog_endpoint =
         Prop.computed __type __id "catalog_endpoint";
       guardian_endpoint =
         Prop.computed __type __id "guardian_endpoint";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_resource_group_name =
         Prop.computed __type __id "managed_resource_group_name";
       managed_resources =
         Prop.computed __type __id "managed_resources";
       name = Prop.computed __type __id "name";
       public_network_enabled =
         Prop.computed __type __id "public_network_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scan_endpoint = Prop.computed __type __id "scan_endpoint";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_purview_account
        (azurerm_purview_account ?id ?managed_resource_group_name
           ?public_network_enabled ?tags ?timeouts ~location ~name
           ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?managed_resource_group_name
    ?public_network_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?managed_resource_group_name ?public_network_enabled
      ?tags ?timeouts ~location ~name ~resource_group_name ~identity
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
