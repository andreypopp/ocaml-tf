(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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

type query_keys = { key : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : query_keys) -> ()

let yojson_of_query_keys =
  (function
   | { key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : query_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_query_keys

[@@@deriving.end]

type azurerm_search_service = {
  allowed_ips : string prop list option; [@option]
  authentication_failure_mode : string prop option; [@option]
  customer_managed_key_enforcement_enabled : bool prop option;
      [@option]
  hosting_mode : string prop option; [@option]
  id : string prop option; [@option]
  local_authentication_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  partition_count : float prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  replica_count : float prop option; [@option]
  resource_group_name : string prop;
  semantic_search_sku : string prop option; [@option]
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_search_service) -> ()

let yojson_of_azurerm_search_service =
  (function
   | {
       allowed_ips = v_allowed_ips;
       authentication_failure_mode = v_authentication_failure_mode;
       customer_managed_key_enforcement_enabled =
         v_customer_managed_key_enforcement_enabled;
       hosting_mode = v_hosting_mode;
       id = v_id;
       local_authentication_enabled = v_local_authentication_enabled;
       location = v_location;
       name = v_name;
       partition_count = v_partition_count;
       public_network_access_enabled =
         v_public_network_access_enabled;
       replica_count = v_replica_count;
       resource_group_name = v_resource_group_name;
       semantic_search_sku = v_semantic_search_sku;
       sku = v_sku;
       tags = v_tags;
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
         match v_semantic_search_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "semantic_search_sku", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_replica_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replica_count", arg in
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
         match v_partition_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_hosting_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hosting_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_managed_key_enforcement_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "customer_managed_key_enforcement_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_failure_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_failure_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_search_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_search_service

[@@@deriving.end]

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_search_service ?allowed_ips ?authentication_failure_mode
    ?customer_managed_key_enforcement_enabled ?hosting_mode ?id
    ?local_authentication_enabled ?partition_count
    ?public_network_access_enabled ?replica_count
    ?semantic_search_sku ?tags ?(identity = []) ?timeouts ~location
    ~name ~resource_group_name ~sku () : azurerm_search_service =
  {
    allowed_ips;
    authentication_failure_mode;
    customer_managed_key_enforcement_enabled;
    hosting_mode;
    id;
    local_authentication_enabled;
    location;
    name;
    partition_count;
    public_network_access_enabled;
    replica_count;
    resource_group_name;
    semantic_search_sku;
    sku;
    tags;
    identity;
    timeouts;
  }

type t = {
  allowed_ips : string list prop;
  authentication_failure_mode : string prop;
  customer_managed_key_enforcement_enabled : bool prop;
  hosting_mode : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  name : string prop;
  partition_count : float prop;
  primary_key : string prop;
  public_network_access_enabled : bool prop;
  query_keys : query_keys list prop;
  replica_count : float prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  semantic_search_sku : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let make ?allowed_ips ?authentication_failure_mode
    ?customer_managed_key_enforcement_enabled ?hosting_mode ?id
    ?local_authentication_enabled ?partition_count
    ?public_network_access_enabled ?replica_count
    ?semantic_search_sku ?tags ?(identity = []) ?timeouts ~location
    ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_search_service" in
  let __attrs =
    ({
       allowed_ips = Prop.computed __type __id "allowed_ips";
       authentication_failure_mode =
         Prop.computed __type __id "authentication_failure_mode";
       customer_managed_key_enforcement_enabled =
         Prop.computed __type __id
           "customer_managed_key_enforcement_enabled";
       hosting_mode = Prop.computed __type __id "hosting_mode";
       id = Prop.computed __type __id "id";
       local_authentication_enabled =
         Prop.computed __type __id "local_authentication_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       partition_count = Prop.computed __type __id "partition_count";
       primary_key = Prop.computed __type __id "primary_key";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       query_keys = Prop.computed __type __id "query_keys";
       replica_count = Prop.computed __type __id "replica_count";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_key = Prop.computed __type __id "secondary_key";
       semantic_search_sku =
         Prop.computed __type __id "semantic_search_sku";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_search_service
        (azurerm_search_service ?allowed_ips
           ?authentication_failure_mode
           ?customer_managed_key_enforcement_enabled ?hosting_mode
           ?id ?local_authentication_enabled ?partition_count
           ?public_network_access_enabled ?replica_count
           ?semantic_search_sku ?tags ~identity ?timeouts ~location
           ~name ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_ips ?authentication_failure_mode
    ?customer_managed_key_enforcement_enabled ?hosting_mode ?id
    ?local_authentication_enabled ?partition_count
    ?public_network_access_enabled ?replica_count
    ?semantic_search_sku ?tags ?(identity = []) ?timeouts ~location
    ~name ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_ips ?authentication_failure_mode
      ?customer_managed_key_enforcement_enabled ?hosting_mode ?id
      ?local_authentication_enabled ?partition_count
      ?public_network_access_enabled ?replica_count
      ?semantic_search_sku ?tags ~identity ?timeouts ~location ~name
      ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
