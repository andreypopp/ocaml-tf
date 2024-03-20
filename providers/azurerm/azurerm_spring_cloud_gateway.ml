(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type api_metadata = {
  description : string prop option; [@option]
  documentation_url : string prop option; [@option]
  server_url : string prop option; [@option]
  title : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : api_metadata) -> ()

let yojson_of_api_metadata =
  (function
   | {
       description = v_description;
       documentation_url = v_documentation_url;
       server_url = v_server_url;
       title = v_title;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_documentation_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "documentation_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : api_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_api_metadata

[@@@deriving.end]

type client_authorization = {
  certificate_ids : string prop list option; [@option]
  verification_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_authorization) -> ()

let yojson_of_client_authorization =
  (function
   | {
       certificate_ids = v_certificate_ids;
       verification_enabled = v_verification_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_verification_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verification_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "certificate_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_authorization

[@@@deriving.end]

type cors = {
  allowed_headers : string prop list option; [@option]
  allowed_methods : string prop list option; [@option]
  allowed_origin_patterns : string prop list option; [@option]
  allowed_origins : string prop list option; [@option]
  credentials_allowed : bool prop option; [@option]
  exposed_headers : string prop list option; [@option]
  max_age_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors) -> ()

let yojson_of_cors =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origin_patterns = v_allowed_origin_patterns;
       allowed_origins = v_allowed_origins;
       credentials_allowed = v_credentials_allowed;
       exposed_headers = v_exposed_headers;
       max_age_seconds = v_max_age_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exposed_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exposed_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credentials_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "credentials_allowed", arg in
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
         match v_allowed_origin_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_origin_patterns", arg in
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
       `Assoc bnds
    : cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors

[@@@deriving.end]

type local_response_cache_per_instance = {
  size : string prop option; [@option]
  time_to_live : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : local_response_cache_per_instance) -> ()

let yojson_of_local_response_cache_per_instance =
  (function
   | { size = v_size; time_to_live = v_time_to_live } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_to_live with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_to_live", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : local_response_cache_per_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_local_response_cache_per_instance

[@@@deriving.end]

type local_response_cache_per_route = {
  size : string prop option; [@option]
  time_to_live : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : local_response_cache_per_route) -> ()

let yojson_of_local_response_cache_per_route =
  (function
   | { size = v_size; time_to_live = v_time_to_live } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_to_live with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_to_live", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : local_response_cache_per_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_local_response_cache_per_route

[@@@deriving.end]

type quota = {
  cpu : string prop option; [@option]
  memory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota) -> ()

let yojson_of_quota =
  (function
   | { cpu = v_cpu; memory = v_memory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : quota -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota

[@@@deriving.end]

type sso = {
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  issuer_uri : string prop option; [@option]
  scope : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sso) -> ()

let yojson_of_sso =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       issuer_uri = v_issuer_uri;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issuer_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sso -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sso

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

type azurerm_spring_cloud_gateway = {
  application_performance_monitoring_ids : string prop list option;
      [@option]
  application_performance_monitoring_types : string prop list option;
      [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  instance_count : float prop option; [@option]
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  sensitive_environment_variables :
    (string * string prop) list option;
      [@option]
  spring_cloud_service_id : string prop;
  api_metadata : api_metadata list;
  client_authorization : client_authorization list;
  cors : cors list;
  local_response_cache_per_instance :
    local_response_cache_per_instance list;
  local_response_cache_per_route :
    local_response_cache_per_route list;
  quota : quota list;
  sso : sso list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_gateway) -> ()

let yojson_of_azurerm_spring_cloud_gateway =
  (function
   | {
       application_performance_monitoring_ids =
         v_application_performance_monitoring_ids;
       application_performance_monitoring_types =
         v_application_performance_monitoring_types;
       environment_variables = v_environment_variables;
       https_only = v_https_only;
       id = v_id;
       instance_count = v_instance_count;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       sensitive_environment_variables =
         v_sensitive_environment_variables;
       spring_cloud_service_id = v_spring_cloud_service_id;
       api_metadata = v_api_metadata;
       client_authorization = v_client_authorization;
       cors = v_cors;
       local_response_cache_per_instance =
         v_local_response_cache_per_instance;
       local_response_cache_per_route =
         v_local_response_cache_per_route;
       quota = v_quota;
       sso = v_sso;
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
         let arg = yojson_of_list yojson_of_sso v_sso in
         ("sso", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_quota v_quota in
         ("quota", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_local_response_cache_per_route
             v_local_response_cache_per_route
         in
         ("local_response_cache_per_route", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_local_response_cache_per_instance
             v_local_response_cache_per_instance
         in
         ("local_response_cache_per_instance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_cors v_cors in
         ("cors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_authorization
             v_client_authorization
         in
         ("client_authorization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_api_metadata v_api_metadata
         in
         ("api_metadata", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_service_id
         in
         ("spring_cloud_service_id", arg) :: bnds
       in
       let bnds =
         match v_sensitive_environment_variables with
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
             let bnd = "sensitive_environment_variables", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
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
         match v_https_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_variables with
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
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_performance_monitoring_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "application_performance_monitoring_types", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_application_performance_monitoring_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "application_performance_monitoring_ids", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_gateway

[@@@deriving.end]

let api_metadata ?description ?documentation_url ?server_url ?title
    ?version () : api_metadata =
  { description; documentation_url; server_url; title; version }

let client_authorization ?certificate_ids ?verification_enabled () :
    client_authorization =
  { certificate_ids; verification_enabled }

let cors ?allowed_headers ?allowed_methods ?allowed_origin_patterns
    ?allowed_origins ?credentials_allowed ?exposed_headers
    ?max_age_seconds () : cors =
  {
    allowed_headers;
    allowed_methods;
    allowed_origin_patterns;
    allowed_origins;
    credentials_allowed;
    exposed_headers;
    max_age_seconds;
  }

let local_response_cache_per_instance ?size ?time_to_live () :
    local_response_cache_per_instance =
  { size; time_to_live }

let local_response_cache_per_route ?size ?time_to_live () :
    local_response_cache_per_route =
  { size; time_to_live }

let quota ?cpu ?memory () : quota = { cpu; memory }

let sso ?client_id ?client_secret ?issuer_uri ?scope () : sso =
  { client_id; client_secret; issuer_uri; scope }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_gateway
    ?application_performance_monitoring_ids
    ?application_performance_monitoring_types ?environment_variables
    ?https_only ?id ?instance_count ?public_network_access_enabled
    ?sensitive_environment_variables ?timeouts ~name
    ~spring_cloud_service_id ~api_metadata ~client_authorization
    ~cors ~local_response_cache_per_instance
    ~local_response_cache_per_route ~quota ~sso () :
    azurerm_spring_cloud_gateway =
  {
    application_performance_monitoring_ids;
    application_performance_monitoring_types;
    environment_variables;
    https_only;
    id;
    instance_count;
    name;
    public_network_access_enabled;
    sensitive_environment_variables;
    spring_cloud_service_id;
    api_metadata;
    client_authorization;
    cors;
    local_response_cache_per_instance;
    local_response_cache_per_route;
    quota;
    sso;
    timeouts;
  }

type t = {
  application_performance_monitoring_ids : string list prop;
  application_performance_monitoring_types : string list prop;
  environment_variables : (string * string) list prop;
  https_only : bool prop;
  id : string prop;
  instance_count : float prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  sensitive_environment_variables : (string * string) list prop;
  spring_cloud_service_id : string prop;
  url : string prop;
}

let make ?application_performance_monitoring_ids
    ?application_performance_monitoring_types ?environment_variables
    ?https_only ?id ?instance_count ?public_network_access_enabled
    ?sensitive_environment_variables ?timeouts ~name
    ~spring_cloud_service_id ~api_metadata ~client_authorization
    ~cors ~local_response_cache_per_instance
    ~local_response_cache_per_route ~quota ~sso __id =
  let __type = "azurerm_spring_cloud_gateway" in
  let __attrs =
    ({
       application_performance_monitoring_ids =
         Prop.computed __type __id
           "application_performance_monitoring_ids";
       application_performance_monitoring_types =
         Prop.computed __type __id
           "application_performance_monitoring_types";
       environment_variables =
         Prop.computed __type __id "environment_variables";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       sensitive_environment_variables =
         Prop.computed __type __id "sensitive_environment_variables";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_gateway
        (azurerm_spring_cloud_gateway
           ?application_performance_monitoring_ids
           ?application_performance_monitoring_types
           ?environment_variables ?https_only ?id ?instance_count
           ?public_network_access_enabled
           ?sensitive_environment_variables ?timeouts ~name
           ~spring_cloud_service_id ~api_metadata
           ~client_authorization ~cors
           ~local_response_cache_per_instance
           ~local_response_cache_per_route ~quota ~sso ());
    attrs = __attrs;
  }

let register ?tf_module ?application_performance_monitoring_ids
    ?application_performance_monitoring_types ?environment_variables
    ?https_only ?id ?instance_count ?public_network_access_enabled
    ?sensitive_environment_variables ?timeouts ~name
    ~spring_cloud_service_id ~api_metadata ~client_authorization
    ~cors ~local_response_cache_per_instance
    ~local_response_cache_per_route ~quota ~sso __id =
  let (r : _ Tf_core.resource) =
    make ?application_performance_monitoring_ids
      ?application_performance_monitoring_types
      ?environment_variables ?https_only ?id ?instance_count
      ?public_network_access_enabled ?sensitive_environment_variables
      ?timeouts ~name ~spring_cloud_service_id ~api_metadata
      ~client_authorization ~cors ~local_response_cache_per_instance
      ~local_response_cache_per_route ~quota ~sso __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
