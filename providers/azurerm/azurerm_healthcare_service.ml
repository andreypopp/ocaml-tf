(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_configuration = {
  audience : string prop option; [@option]
  authority : string prop option; [@option]
  smart_proxy_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication_configuration) -> ()

let yojson_of_authentication_configuration =
  (function
   | {
       audience = v_audience;
       authority = v_authority;
       smart_proxy_enabled = v_smart_proxy_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_smart_proxy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smart_proxy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audience", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authentication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_configuration

[@@@deriving.end]

type cors_configuration = {
  allow_credentials : bool prop option; [@option]
  allowed_headers : string prop list option; [@option]
  allowed_methods : string prop list option; [@option]
  allowed_origins : string prop list option; [@option]
  max_age_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_configuration) -> ()

let yojson_of_cors_configuration =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       max_age_in_seconds = v_max_age_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_configuration

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

type azurerm_healthcare_service = {
  access_policy_object_ids : string prop list option; [@option]
  cosmosdb_key_vault_key_versionless_id : string prop option;
      [@option]
  cosmosdb_throughput : float prop option; [@option]
  id : string prop option; [@option]
  kind : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  authentication_configuration : authentication_configuration list;
  cors_configuration : cors_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_healthcare_service) -> ()

let yojson_of_azurerm_healthcare_service =
  (function
   | {
       access_policy_object_ids = v_access_policy_object_ids;
       cosmosdb_key_vault_key_versionless_id =
         v_cosmosdb_key_vault_key_versionless_id;
       cosmosdb_throughput = v_cosmosdb_throughput;
       id = v_id;
       kind = v_kind;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       authentication_configuration = v_authentication_configuration;
       cors_configuration = v_cors_configuration;
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
         let arg =
           yojson_of_list yojson_of_cors_configuration
             v_cors_configuration
         in
         ("cors_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authentication_configuration
             v_authentication_configuration
         in
         ("authentication_configuration", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
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
         match v_cosmosdb_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cosmosdb_throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cosmosdb_key_vault_key_versionless_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "cosmosdb_key_vault_key_versionless_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_access_policy_object_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "access_policy_object_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_healthcare_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_healthcare_service

[@@@deriving.end]

let authentication_configuration ?audience ?authority
    ?smart_proxy_enabled () : authentication_configuration =
  { audience; authority; smart_proxy_enabled }

let cors_configuration ?allow_credentials ?allowed_headers
    ?allowed_methods ?allowed_origins ?max_age_in_seconds () :
    cors_configuration =
  {
    allow_credentials;
    allowed_headers;
    allowed_methods;
    allowed_origins;
    max_age_in_seconds;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_healthcare_service ?access_policy_object_ids
    ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
    ?kind ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~authentication_configuration
    ~cors_configuration () : azurerm_healthcare_service =
  {
    access_policy_object_ids;
    cosmosdb_key_vault_key_versionless_id;
    cosmosdb_throughput;
    id;
    kind;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    tags;
    authentication_configuration;
    cors_configuration;
    timeouts;
  }

type t = {
  access_policy_object_ids : string list prop;
  cosmosdb_key_vault_key_versionless_id : string prop;
  cosmosdb_throughput : float prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?access_policy_object_ids
    ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
    ?kind ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~authentication_configuration
    ~cors_configuration __id =
  let __type = "azurerm_healthcare_service" in
  let __attrs =
    ({
       access_policy_object_ids =
         Prop.computed __type __id "access_policy_object_ids";
       cosmosdb_key_vault_key_versionless_id =
         Prop.computed __type __id
           "cosmosdb_key_vault_key_versionless_id";
       cosmosdb_throughput =
         Prop.computed __type __id "cosmosdb_throughput";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
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
      yojson_of_azurerm_healthcare_service
        (azurerm_healthcare_service ?access_policy_object_ids
           ?cosmosdb_key_vault_key_versionless_id
           ?cosmosdb_throughput ?id ?kind
           ?public_network_access_enabled ?tags ?timeouts ~location
           ~name ~resource_group_name ~authentication_configuration
           ~cors_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policy_object_ids
    ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
    ?kind ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~authentication_configuration
    ~cors_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?access_policy_object_ids
      ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
      ?kind ?public_network_access_enabled ?tags ?timeouts ~location
      ~name ~resource_group_name ~authentication_configuration
      ~cors_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
