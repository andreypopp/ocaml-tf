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

type default_route_settings = {
  data_trace_enabled : bool prop option; [@option]
  detailed_metrics_enabled : bool prop option; [@option]
  logging_level : string prop option; [@option]
  throttling_burst_limit : float prop option; [@option]
  throttling_rate_limit : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_route_settings) -> ()

let yojson_of_default_route_settings =
  (function
   | {
       data_trace_enabled = v_data_trace_enabled;
       detailed_metrics_enabled = v_detailed_metrics_enabled;
       logging_level = v_logging_level;
       throttling_burst_limit = v_throttling_burst_limit;
       throttling_rate_limit = v_throttling_rate_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_throttling_rate_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throttling_rate_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throttling_burst_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throttling_burst_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logging_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detailed_metrics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "detailed_metrics_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_trace_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_trace_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_settings

[@@@deriving.end]

type route_settings = {
  data_trace_enabled : bool prop option; [@option]
  detailed_metrics_enabled : bool prop option; [@option]
  logging_level : string prop option; [@option]
  route_key : string prop;
  throttling_burst_limit : float prop option; [@option]
  throttling_rate_limit : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : route_settings) -> ()

let yojson_of_route_settings =
  (function
   | {
       data_trace_enabled = v_data_trace_enabled;
       detailed_metrics_enabled = v_detailed_metrics_enabled;
       logging_level = v_logging_level;
       route_key = v_route_key;
       throttling_burst_limit = v_throttling_burst_limit;
       throttling_rate_limit = v_throttling_rate_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_throttling_rate_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throttling_rate_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throttling_burst_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throttling_burst_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_route_key in
         ("route_key", arg) :: bnds
       in
       let bnds =
         match v_logging_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detailed_metrics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "detailed_metrics_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_trace_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_trace_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : route_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_route_settings

[@@@deriving.end]

type aws_apigatewayv2_stage = {
  api_id : string prop;
  auto_deploy : bool prop option; [@option]
  client_certificate_id : string prop option; [@option]
  deployment_id : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  stage_variables : (string * string prop) list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  access_log_settings : access_log_settings list;
      [@default []] [@yojson_drop_default ( = )]
  default_route_settings : default_route_settings list;
      [@default []] [@yojson_drop_default ( = )]
  route_settings : route_settings list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_stage) -> ()

let yojson_of_aws_apigatewayv2_stage =
  (function
   | {
       api_id = v_api_id;
       auto_deploy = v_auto_deploy;
       client_certificate_id = v_client_certificate_id;
       deployment_id = v_deployment_id;
       description = v_description;
       id = v_id;
       name = v_name;
       stage_variables = v_stage_variables;
       tags = v_tags;
       tags_all = v_tags_all;
       access_log_settings = v_access_log_settings;
       default_route_settings = v_default_route_settings;
       route_settings = v_route_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_route_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_route_settings)
               v_route_settings
           in
           let bnd = "route_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_default_route_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_route_settings)
               v_default_route_settings
           in
           let bnd = "default_route_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_access_log_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_log_settings)
               v_access_log_settings
           in
           let bnd = "access_log_settings", arg in
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
         match v_stage_variables with
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
             let bnd = "stage_variables", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_id", arg in
             bnd :: bnds
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
         match v_auto_deploy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_deploy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_stage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_stage

[@@@deriving.end]

let access_log_settings ~destination_arn ~format () :
    access_log_settings =
  { destination_arn; format }

let default_route_settings ?data_trace_enabled
    ?detailed_metrics_enabled ?logging_level ?throttling_burst_limit
    ?throttling_rate_limit () : default_route_settings =
  {
    data_trace_enabled;
    detailed_metrics_enabled;
    logging_level;
    throttling_burst_limit;
    throttling_rate_limit;
  }

let route_settings ?data_trace_enabled ?detailed_metrics_enabled
    ?logging_level ?throttling_burst_limit ?throttling_rate_limit
    ~route_key () : route_settings =
  {
    data_trace_enabled;
    detailed_metrics_enabled;
    logging_level;
    route_key;
    throttling_burst_limit;
    throttling_rate_limit;
  }

let aws_apigatewayv2_stage ?auto_deploy ?client_certificate_id
    ?deployment_id ?description ?id ?stage_variables ?tags ?tags_all
    ?(access_log_settings = []) ?(default_route_settings = [])
    ~api_id ~name ~route_settings () : aws_apigatewayv2_stage =
  {
    api_id;
    auto_deploy;
    client_certificate_id;
    deployment_id;
    description;
    id;
    name;
    stage_variables;
    tags;
    tags_all;
    access_log_settings;
    default_route_settings;
    route_settings;
  }

type t = {
  tf_name : string;
  api_id : string prop;
  arn : string prop;
  auto_deploy : bool prop;
  client_certificate_id : string prop;
  deployment_id : string prop;
  description : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  name : string prop;
  stage_variables : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?auto_deploy ?client_certificate_id ?deployment_id
    ?description ?id ?stage_variables ?tags ?tags_all
    ?(access_log_settings = []) ?(default_route_settings = [])
    ~api_id ~name ~route_settings __id =
  let __type = "aws_apigatewayv2_stage" in
  let __attrs =
    ({
       tf_name = __id;
       api_id = Prop.computed __type __id "api_id";
       arn = Prop.computed __type __id "arn";
       auto_deploy = Prop.computed __type __id "auto_deploy";
       client_certificate_id =
         Prop.computed __type __id "client_certificate_id";
       deployment_id = Prop.computed __type __id "deployment_id";
       description = Prop.computed __type __id "description";
       execution_arn = Prop.computed __type __id "execution_arn";
       id = Prop.computed __type __id "id";
       invoke_url = Prop.computed __type __id "invoke_url";
       name = Prop.computed __type __id "name";
       stage_variables = Prop.computed __type __id "stage_variables";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_stage
        (aws_apigatewayv2_stage ?auto_deploy ?client_certificate_id
           ?deployment_id ?description ?id ?stage_variables ?tags
           ?tags_all ~access_log_settings ~default_route_settings
           ~api_id ~name ~route_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_deploy ?client_certificate_id
    ?deployment_id ?description ?id ?stage_variables ?tags ?tags_all
    ?(access_log_settings = []) ?(default_route_settings = [])
    ~api_id ~name ~route_settings __id =
  let (r : _ Tf_core.resource) =
    make ?auto_deploy ?client_certificate_id ?deployment_id
      ?description ?id ?stage_variables ?tags ?tags_all
      ~access_log_settings ~default_route_settings ~api_id ~name
      ~route_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
