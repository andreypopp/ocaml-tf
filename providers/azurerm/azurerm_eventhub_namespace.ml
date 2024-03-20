(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type network_rulesets__virtual_network_rule = {
  ignore_missing_virtual_network_service_endpoint : bool prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rulesets__virtual_network_rule) -> ()

let yojson_of_network_rulesets__virtual_network_rule =
  (function
   | {
       ignore_missing_virtual_network_service_endpoint =
         v_ignore_missing_virtual_network_service_endpoint;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_ignore_missing_virtual_network_service_endpoint
         in
         ("ignore_missing_virtual_network_service_endpoint", arg)
         :: bnds
       in
       `Assoc bnds
    : network_rulesets__virtual_network_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rulesets__virtual_network_rule

[@@@deriving.end]

type network_rulesets__ip_rule = {
  action : string prop;
  ip_mask : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rulesets__ip_rule) -> ()

let yojson_of_network_rulesets__ip_rule =
  (function
   | { action = v_action; ip_mask = v_ip_mask } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_mask in
         ("ip_mask", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : network_rulesets__ip_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rulesets__ip_rule

[@@@deriving.end]

type network_rulesets = {
  default_action : string prop;
  ip_rule : network_rulesets__ip_rule list;
  public_network_access_enabled : bool prop;
  trusted_service_access_enabled : bool prop;
  virtual_network_rule : network_rulesets__virtual_network_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rulesets) -> ()

let yojson_of_network_rulesets =
  (function
   | {
       default_action = v_default_action;
       ip_rule = v_ip_rule;
       public_network_access_enabled =
         v_public_network_access_enabled;
       trusted_service_access_enabled =
         v_trusted_service_access_enabled;
       virtual_network_rule = v_virtual_network_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_rulesets__virtual_network_rule
             v_virtual_network_rule
         in
         ("virtual_network_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_trusted_service_access_enabled
         in
         ("trusted_service_access_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_public_network_access_enabled
         in
         ("public_network_access_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_rulesets__ip_rule
             v_ip_rule
         in
         ("ip_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_action
         in
         ("default_action", arg) :: bnds
       in
       `Assoc bnds
    : network_rulesets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rulesets

[@@@deriving.end]

type azurerm_eventhub_namespace = {
  auto_inflate_enabled : bool prop option; [@option]
  capacity : float prop option; [@option]
  dedicated_cluster_id : string prop option; [@option]
  id : string prop option; [@option]
  local_authentication_enabled : bool prop option; [@option]
  location : string prop;
  maximum_throughput_units : float prop option; [@option]
  minimum_tls_version : string prop option; [@option]
  name : string prop;
  network_rulesets : network_rulesets list option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  zone_redundant : bool prop option; [@option]
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_eventhub_namespace) -> ()

let yojson_of_azurerm_eventhub_namespace =
  (function
   | {
       auto_inflate_enabled = v_auto_inflate_enabled;
       capacity = v_capacity;
       dedicated_cluster_id = v_dedicated_cluster_id;
       id = v_id;
       local_authentication_enabled = v_local_authentication_enabled;
       location = v_location;
       maximum_throughput_units = v_maximum_throughput_units;
       minimum_tls_version = v_minimum_tls_version;
       name = v_name;
       network_rulesets = v_network_rulesets;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       zone_redundant = v_zone_redundant;
       identity = v_identity;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_zone_redundant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_rulesets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_network_rulesets v in
             let bnd = "network_rulesets", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_minimum_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_throughput_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_throughput_units", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_authentication_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dedicated_cluster_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dedicated_cluster_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_inflate_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_inflate_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_eventhub_namespace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventhub_namespace

[@@@deriving.end]

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
