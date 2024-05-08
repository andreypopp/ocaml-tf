(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type customer_managed_key = {
  identity_id : string prop;
  infrastructure_encryption_enabled : bool prop option; [@option]
  key_vault_key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : customer_managed_key) -> ()

let yojson_of_customer_managed_key =
  (function
   | {
       identity_id = v_identity_id;
       infrastructure_encryption_enabled =
         v_infrastructure_encryption_enabled;
       key_vault_key_id = v_key_vault_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       let bnds =
         match v_infrastructure_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "infrastructure_encryption_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identity_id in
         ("identity_id", arg) :: bnds
       in
       `Assoc bnds
    : customer_managed_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_customer_managed_key

[@@@deriving.end]

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

type network_rule_set__network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_set__network_rules) -> ()

let yojson_of_network_rule_set__network_rules =
  (function
   | {
       ignore_missing_vnet_service_endpoint =
         v_ignore_missing_vnet_service_endpoint;
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
         match v_ignore_missing_vnet_service_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_missing_vnet_service_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_rule_set__network_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_set__network_rules

[@@@deriving.end]

type network_rule_set = {
  default_action : string prop option; [@option]
  ip_rules : string prop list option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  trusted_services_allowed : bool prop option; [@option]
  network_rules : network_rule_set__network_rules list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_set) -> ()

let yojson_of_network_rule_set =
  (function
   | {
       default_action = v_default_action;
       ip_rules = v_ip_rules;
       public_network_access_enabled =
         v_public_network_access_enabled;
       trusted_services_allowed = v_trusted_services_allowed;
       network_rules = v_network_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_network_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_rule_set__network_rules)
               v_network_rules
           in
           let bnd = "network_rules", arg in
           bnd :: bnds
       in
       let bnds =
         match v_trusted_services_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "trusted_services_allowed", arg in
             bnd :: bnds
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
         match v_ip_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_rules", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_rule_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_set

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

type azurerm_servicebus_namespace = {
  capacity : float prop option; [@option]
  id : string prop option; [@option]
  local_auth_enabled : bool prop option; [@option]
  location : string prop;
  minimum_tls_version : string prop option; [@option]
  name : string prop;
  premium_messaging_partitions : float prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  zone_redundant : bool prop option; [@option]
  customer_managed_key : customer_managed_key list;
      [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  network_rule_set : network_rule_set list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_servicebus_namespace) -> ()

let yojson_of_azurerm_servicebus_namespace =
  (function
   | {
       capacity = v_capacity;
       id = v_id;
       local_auth_enabled = v_local_auth_enabled;
       location = v_location;
       minimum_tls_version = v_minimum_tls_version;
       name = v_name;
       premium_messaging_partitions = v_premium_messaging_partitions;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       zone_redundant = v_zone_redundant;
       customer_managed_key = v_customer_managed_key;
       identity = v_identity;
       network_rule_set = v_network_rule_set;
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
         if [] = v_network_rule_set then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_rule_set)
               v_network_rule_set
           in
           let bnd = "network_rule_set", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_customer_managed_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_customer_managed_key)
               v_customer_managed_key
           in
           let bnd = "customer_managed_key", arg in
           bnd :: bnds
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
         match v_premium_messaging_partitions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "premium_messaging_partitions", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_auth_enabled", arg in
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
         match v_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_servicebus_namespace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_servicebus_namespace

[@@@deriving.end]

let customer_managed_key ?infrastructure_encryption_enabled
    ~identity_id ~key_vault_key_id () : customer_managed_key =
  {
    identity_id;
    infrastructure_encryption_enabled;
    key_vault_key_id;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_rule_set__network_rules
    ?ignore_missing_vnet_service_endpoint ~subnet_id () :
    network_rule_set__network_rules =
  { ignore_missing_vnet_service_endpoint; subnet_id }

let network_rule_set ?default_action ?ip_rules
    ?public_network_access_enabled ?trusted_services_allowed
    ~network_rules () : network_rule_set =
  {
    default_action;
    ip_rules;
    public_network_access_enabled;
    trusted_services_allowed;
    network_rules;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_namespace ?capacity ?id ?local_auth_enabled
    ?minimum_tls_version ?premium_messaging_partitions
    ?public_network_access_enabled ?tags ?zone_redundant
    ?(customer_managed_key = []) ?(identity = [])
    ?(network_rule_set = []) ?timeouts ~location ~name
    ~resource_group_name ~sku () : azurerm_servicebus_namespace =
  {
    capacity;
    id;
    local_auth_enabled;
    location;
    minimum_tls_version;
    name;
    premium_messaging_partitions;
    public_network_access_enabled;
    resource_group_name;
    sku;
    tags;
    zone_redundant;
    customer_managed_key;
    identity;
    network_rule_set;
    timeouts;
  }

type t = {
  tf_name : string;
  capacity : float prop;
  default_primary_connection_string : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_key : string prop;
  endpoint : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  premium_messaging_partitions : float prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let make ?capacity ?id ?local_auth_enabled ?minimum_tls_version
    ?premium_messaging_partitions ?public_network_access_enabled
    ?tags ?zone_redundant ?(customer_managed_key = [])
    ?(identity = []) ?(network_rule_set = []) ?timeouts ~location
    ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_servicebus_namespace" in
  let __attrs =
    ({
       tf_name = __id;
       capacity = Prop.computed __type __id "capacity";
       default_primary_connection_string =
         Prop.computed __type __id
           "default_primary_connection_string";
       default_primary_key =
         Prop.computed __type __id "default_primary_key";
       default_secondary_connection_string =
         Prop.computed __type __id
           "default_secondary_connection_string";
       default_secondary_key =
         Prop.computed __type __id "default_secondary_key";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       minimum_tls_version =
         Prop.computed __type __id "minimum_tls_version";
       name = Prop.computed __type __id "name";
       premium_messaging_partitions =
         Prop.computed __type __id "premium_messaging_partitions";
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
      yojson_of_azurerm_servicebus_namespace
        (azurerm_servicebus_namespace ?capacity ?id
           ?local_auth_enabled ?minimum_tls_version
           ?premium_messaging_partitions
           ?public_network_access_enabled ?tags ?zone_redundant
           ~customer_managed_key ~identity ~network_rule_set
           ?timeouts ~location ~name ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?capacity ?id ?local_auth_enabled
    ?minimum_tls_version ?premium_messaging_partitions
    ?public_network_access_enabled ?tags ?zone_redundant
    ?(customer_managed_key = []) ?(identity = [])
    ?(network_rule_set = []) ?timeouts ~location ~name
    ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?capacity ?id ?local_auth_enabled ?minimum_tls_version
      ?premium_messaging_partitions ?public_network_access_enabled
      ?tags ?zone_redundant ~customer_managed_key ~identity
      ~network_rule_set ?timeouts ~location ~name
      ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
