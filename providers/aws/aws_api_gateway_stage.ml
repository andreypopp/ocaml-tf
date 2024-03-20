(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_log_settings = {
  destination_arn : string prop;
  format : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_log_settings) -> ()

let yojson_of_access_log_settings =
  (function
   | { destination_arn = v_destination_arn; format = v_format } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_arn
         in
         ("destination_arn", arg) :: bnds
       in
       `Assoc bnds
    : access_log_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_log_settings

[@@@deriving.end]

type canary_settings = {
  percent_traffic : float prop option; [@option]
  stage_variable_overrides : (string * string prop) list option;
      [@option]
  use_stage_cache : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : canary_settings) -> ()

let yojson_of_canary_settings =
  (function
   | {
       percent_traffic = v_percent_traffic;
       stage_variable_overrides = v_stage_variable_overrides;
       use_stage_cache = v_use_stage_cache;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_stage_cache with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_stage_cache", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stage_variable_overrides with
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
             let bnd = "stage_variable_overrides", arg in
             bnd :: bnds
       in
       let bnds =
         match v_percent_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percent_traffic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : canary_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_canary_settings

[@@@deriving.end]

type aws_api_gateway_stage = {
  cache_cluster_enabled : bool prop option; [@option]
  cache_cluster_size : string prop option; [@option]
  client_certificate_id : string prop option; [@option]
  deployment_id : string prop;
  description : string prop option; [@option]
  documentation_version : string prop option; [@option]
  id : string prop option; [@option]
  rest_api_id : string prop;
  stage_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  variables : (string * string prop) list option; [@option]
  xray_tracing_enabled : bool prop option; [@option]
  access_log_settings : access_log_settings list;
  canary_settings : canary_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_stage) -> ()

let yojson_of_aws_api_gateway_stage =
  (function
   | {
       cache_cluster_enabled = v_cache_cluster_enabled;
       cache_cluster_size = v_cache_cluster_size;
       client_certificate_id = v_client_certificate_id;
       deployment_id = v_deployment_id;
       description = v_description;
       documentation_version = v_documentation_version;
       id = v_id;
       rest_api_id = v_rest_api_id;
       stage_name = v_stage_name;
       tags = v_tags;
       tags_all = v_tags_all;
       variables = v_variables;
       xray_tracing_enabled = v_xray_tracing_enabled;
       access_log_settings = v_access_log_settings;
       canary_settings = v_canary_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_canary_settings v_canary_settings
         in
         ("canary_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_log_settings
             v_access_log_settings
         in
         ("access_log_settings", arg) :: bnds
       in
       let bnds =
         match v_xray_tracing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "xray_tracing_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_variables with
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
             let bnd = "variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         let arg = yojson_of_prop yojson_of_string v_stage_name in
         ("stage_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
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
         match v_documentation_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "documentation_version", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deployment_id in
         ("deployment_id", arg) :: bnds
       in
       let bnds =
         match v_client_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_cluster_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_cluster_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_cluster_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cache_cluster_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_stage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_stage

[@@@deriving.end]

let access_log_settings ~destination_arn ~format () :
    access_log_settings =
  { destination_arn; format }

let canary_settings ?percent_traffic ?stage_variable_overrides
    ?use_stage_cache () : canary_settings =
  { percent_traffic; stage_variable_overrides; use_stage_cache }

let aws_api_gateway_stage ?cache_cluster_enabled ?cache_cluster_size
    ?client_certificate_id ?description ?documentation_version ?id
    ?tags ?tags_all ?variables ?xray_tracing_enabled ~deployment_id
    ~rest_api_id ~stage_name ~access_log_settings ~canary_settings ()
    : aws_api_gateway_stage =
  {
    cache_cluster_enabled;
    cache_cluster_size;
    client_certificate_id;
    deployment_id;
    description;
    documentation_version;
    id;
    rest_api_id;
    stage_name;
    tags;
    tags_all;
    variables;
    xray_tracing_enabled;
    access_log_settings;
    canary_settings;
  }

type t = {
  arn : string prop;
  cache_cluster_enabled : bool prop;
  cache_cluster_size : string prop;
  client_certificate_id : string prop;
  deployment_id : string prop;
  description : string prop;
  documentation_version : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  rest_api_id : string prop;
  stage_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  variables : (string * string) list prop;
  web_acl_arn : string prop;
  xray_tracing_enabled : bool prop;
}

let make ?cache_cluster_enabled ?cache_cluster_size
    ?client_certificate_id ?description ?documentation_version ?id
    ?tags ?tags_all ?variables ?xray_tracing_enabled ~deployment_id
    ~rest_api_id ~stage_name ~access_log_settings ~canary_settings
    __id =
  let __type = "aws_api_gateway_stage" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cache_cluster_enabled =
         Prop.computed __type __id "cache_cluster_enabled";
       cache_cluster_size =
         Prop.computed __type __id "cache_cluster_size";
       client_certificate_id =
         Prop.computed __type __id "client_certificate_id";
       deployment_id = Prop.computed __type __id "deployment_id";
       description = Prop.computed __type __id "description";
       documentation_version =
         Prop.computed __type __id "documentation_version";
       execution_arn = Prop.computed __type __id "execution_arn";
       id = Prop.computed __type __id "id";
       invoke_url = Prop.computed __type __id "invoke_url";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       stage_name = Prop.computed __type __id "stage_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       variables = Prop.computed __type __id "variables";
       web_acl_arn = Prop.computed __type __id "web_acl_arn";
       xray_tracing_enabled =
         Prop.computed __type __id "xray_tracing_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_stage
        (aws_api_gateway_stage ?cache_cluster_enabled
           ?cache_cluster_size ?client_certificate_id ?description
           ?documentation_version ?id ?tags ?tags_all ?variables
           ?xray_tracing_enabled ~deployment_id ~rest_api_id
           ~stage_name ~access_log_settings ~canary_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?cache_cluster_enabled ?cache_cluster_size
    ?client_certificate_id ?description ?documentation_version ?id
    ?tags ?tags_all ?variables ?xray_tracing_enabled ~deployment_id
    ~rest_api_id ~stage_name ~access_log_settings ~canary_settings
    __id =
  let (r : _ Tf_core.resource) =
    make ?cache_cluster_enabled ?cache_cluster_size
      ?client_certificate_id ?description ?documentation_version ?id
      ?tags ?tags_all ?variables ?xray_tracing_enabled ~deployment_id
      ~rest_api_id ~stage_name ~access_log_settings ~canary_settings
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
