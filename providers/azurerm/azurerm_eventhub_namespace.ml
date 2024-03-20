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

type network_rulesets__virtual_network_rule = {
  ignore_missing_virtual_network_service_endpoint : bool prop;
      (** ignore_missing_virtual_network_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type network_rulesets__ip_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
}
[@@deriving yojson_of]

type network_rulesets = {
  default_action : string prop;  (** default_action *)
  ip_rule : network_rulesets__ip_rule list;  (** ip_rule *)
  public_network_access_enabled : bool prop;
      (** public_network_access_enabled *)
  trusted_service_access_enabled : bool prop;
      (** trusted_service_access_enabled *)
  virtual_network_rule : network_rulesets__virtual_network_rule list;
      (** virtual_network_rule *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace = {
  auto_inflate_enabled : bool prop option; [@option]
      (** auto_inflate_enabled *)
  capacity : float prop option; [@option]  (** capacity *)
  dedicated_cluster_id : string prop option; [@option]
      (** dedicated_cluster_id *)
  id : string prop option; [@option]  (** id *)
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  location : string prop;  (** location *)
  maximum_throughput_units : float prop option; [@option]
      (** maximum_throughput_units *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  network_rulesets : network_rulesets list option; [@option]
      (** network_rulesets *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub_namespace ?auto_inflate_enabled ?capacity
    ?dedicated_cluster_id ?id ?local_authentication_enabled
    ?maximum_throughput_units ?minimum_tls_version ?network_rulesets
    ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku ~identity () :
    azurerm_eventhub_namespace =
  {
    auto_inflate_enabled;
    capacity;
    dedicated_cluster_id;
    id;
    local_authentication_enabled;
    location;
    maximum_throughput_units;
    minimum_tls_version;
    name;
    network_rulesets;
    public_network_access_enabled;
    resource_group_name;
    sku;
    tags;
    zone_redundant;
    identity;
    timeouts;
  }

type t = {
  auto_inflate_enabled : bool prop;
  capacity : float prop;
  dedicated_cluster_id : string prop;
  default_primary_connection_string : string prop;
  default_primary_connection_string_alias : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_connection_string_alias : string prop;
  default_secondary_key : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  maximum_throughput_units : float prop;
  minimum_tls_version : string prop;
  name : string prop;
  network_rulesets : network_rulesets list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let make ?auto_inflate_enabled ?capacity ?dedicated_cluster_id ?id
    ?local_authentication_enabled ?maximum_throughput_units
    ?minimum_tls_version ?network_rulesets
    ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku ~identity __id =
  let __type = "azurerm_eventhub_namespace" in
  let __attrs =
    ({
       auto_inflate_enabled =
         Prop.computed __type __id "auto_inflate_enabled";
       capacity = Prop.computed __type __id "capacity";
       dedicated_cluster_id =
         Prop.computed __type __id "dedicated_cluster_id";
       default_primary_connection_string =
         Prop.computed __type __id
           "default_primary_connection_string";
       default_primary_connection_string_alias =
         Prop.computed __type __id
           "default_primary_connection_string_alias";
       default_primary_key =
         Prop.computed __type __id "default_primary_key";
       default_secondary_connection_string =
         Prop.computed __type __id
           "default_secondary_connection_string";
       default_secondary_connection_string_alias =
         Prop.computed __type __id
           "default_secondary_connection_string_alias";
       default_secondary_key =
         Prop.computed __type __id "default_secondary_key";
       id = Prop.computed __type __id "id";
       local_authentication_enabled =
         Prop.computed __type __id "local_authentication_enabled";
       location = Prop.computed __type __id "location";
       maximum_throughput_units =
         Prop.computed __type __id "maximum_throughput_units";
       minimum_tls_version =
         Prop.computed __type __id "minimum_tls_version";
       name = Prop.computed __type __id "name";
       network_rulesets =
         Prop.computed __type __id "network_rulesets";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_namespace
        (azurerm_eventhub_namespace ?auto_inflate_enabled ?capacity
           ?dedicated_cluster_id ?id ?local_authentication_enabled
           ?maximum_throughput_units ?minimum_tls_version
           ?network_rulesets ?public_network_access_enabled ?tags
           ?zone_redundant ?timeouts ~location ~name
           ~resource_group_name ~sku ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_inflate_enabled ?capacity
    ?dedicated_cluster_id ?id ?local_authentication_enabled
    ?maximum_throughput_units ?minimum_tls_version ?network_rulesets
    ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?auto_inflate_enabled ?capacity ?dedicated_cluster_id ?id
      ?local_authentication_enabled ?maximum_throughput_units
      ?minimum_tls_version ?network_rulesets
      ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
      ~location ~name ~resource_group_name ~sku ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
