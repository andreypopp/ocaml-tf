(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type caching_config = {
  caching_keys : string prop list option; [@option]
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : caching_config) -> ()

let yojson_of_caching_config =
  (function
   | { caching_keys = v_caching_keys; ttl = v_ttl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_caching_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "caching_keys", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : caching_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_caching_config

[@@@deriving.end]

type pipeline_config = {
  functions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pipeline_config) -> ()

let yojson_of_pipeline_config =
  (function
   | { functions = v_functions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_functions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "functions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : pipeline_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pipeline_config

[@@@deriving.end]

type runtime = { name : string prop; runtime_version : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : runtime) -> ()

let yojson_of_runtime =
  (function
   | { name = v_name; runtime_version = v_runtime_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_runtime_version
         in
         ("runtime_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : runtime -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_runtime

[@@@deriving.end]

type sync_config__lambda_conflict_handler_config = {
  lambda_conflict_handler_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sync_config__lambda_conflict_handler_config) -> ()

let yojson_of_sync_config__lambda_conflict_handler_config =
  (function
   | { lambda_conflict_handler_arn = v_lambda_conflict_handler_arn }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lambda_conflict_handler_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda_conflict_handler_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sync_config__lambda_conflict_handler_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sync_config__lambda_conflict_handler_config

[@@@deriving.end]

type sync_config = {
  conflict_detection : string prop option; [@option]
  conflict_handler : string prop option; [@option]
  lambda_conflict_handler_config :
    sync_config__lambda_conflict_handler_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sync_config) -> ()

let yojson_of_sync_config =
  (function
   | {
       conflict_detection = v_conflict_detection;
       conflict_handler = v_conflict_handler;
       lambda_conflict_handler_config =
         v_lambda_conflict_handler_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda_conflict_handler_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_sync_config__lambda_conflict_handler_config)
               v_lambda_conflict_handler_config
           in
           let bnd = "lambda_conflict_handler_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_conflict_handler with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "conflict_handler", arg in
             bnd :: bnds
       in
       let bnds =
         match v_conflict_detection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "conflict_detection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sync_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sync_config

[@@@deriving.end]

type aws_appsync_resolver = {
  api_id : string prop;
  code : string prop option; [@option]
  data_source : string prop option; [@option]
  field : string prop;
  id : string prop option; [@option]
  kind : string prop option; [@option]
  max_batch_size : float prop option; [@option]
  request_template : string prop option; [@option]
  response_template : string prop option; [@option]
  type_ : string prop; [@key "type"]
  caching_config : caching_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pipeline_config : pipeline_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  runtime : runtime list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sync_config : sync_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_resolver) -> ()

let yojson_of_aws_appsync_resolver =
  (function
   | {
       api_id = v_api_id;
       code = v_code;
       data_source = v_data_source;
       field = v_field;
       id = v_id;
       kind = v_kind;
       max_batch_size = v_max_batch_size;
       request_template = v_request_template;
       response_template = v_response_template;
       type_ = v_type_;
       caching_config = v_caching_config;
       pipeline_config = v_pipeline_config;
       runtime = v_runtime;
       sync_config = v_sync_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sync_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sync_config) v_sync_config
           in
           let bnd = "sync_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_runtime then bnds
         else
           let arg = (yojson_of_list yojson_of_runtime) v_runtime in
           let bnd = "runtime", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pipeline_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pipeline_config)
               v_pipeline_config
           in
           let bnd = "pipeline_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_caching_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_caching_config)
               v_caching_config
           in
           let bnd = "caching_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_response_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_batch_size", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_field in
         ("field", arg) :: bnds
       in
       let bnds =
         match v_data_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_appsync_resolver -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_resolver

[@@@deriving.end]

let caching_config ?caching_keys ?ttl () : caching_config =
  { caching_keys; ttl }

let pipeline_config ?functions () : pipeline_config = { functions }

let runtime ~name ~runtime_version () : runtime =
  { name; runtime_version }

let sync_config__lambda_conflict_handler_config
    ?lambda_conflict_handler_arn () :
    sync_config__lambda_conflict_handler_config =
  { lambda_conflict_handler_arn }

let sync_config ?conflict_detection ?conflict_handler
    ?(lambda_conflict_handler_config = []) () : sync_config =
  {
    conflict_detection;
    conflict_handler;
    lambda_conflict_handler_config;
  }

let aws_appsync_resolver ?code ?data_source ?id ?kind ?max_batch_size
    ?request_template ?response_template ?(caching_config = [])
    ?(pipeline_config = []) ?(runtime = []) ?(sync_config = [])
    ~api_id ~field ~type_ () : aws_appsync_resolver =
  {
    api_id;
    code;
    data_source;
    field;
    id;
    kind;
    max_batch_size;
    request_template;
    response_template;
    type_;
    caching_config;
    pipeline_config;
    runtime;
    sync_config;
  }

type t = {
  tf_name : string;
  api_id : string prop;
  arn : string prop;
  code : string prop;
  data_source : string prop;
  field : string prop;
  id : string prop;
  kind : string prop;
  max_batch_size : float prop;
  request_template : string prop;
  response_template : string prop;
  type_ : string prop;
}

let make ?code ?data_source ?id ?kind ?max_batch_size
    ?request_template ?response_template ?(caching_config = [])
    ?(pipeline_config = []) ?(runtime = []) ?(sync_config = [])
    ~api_id ~field ~type_ __id =
  let __type = "aws_appsync_resolver" in
  let __attrs =
    ({
       tf_name = __id;
       api_id = Prop.computed __type __id "api_id";
       arn = Prop.computed __type __id "arn";
       code = Prop.computed __type __id "code";
       data_source = Prop.computed __type __id "data_source";
       field = Prop.computed __type __id "field";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       max_batch_size = Prop.computed __type __id "max_batch_size";
       request_template =
         Prop.computed __type __id "request_template";
       response_template =
         Prop.computed __type __id "response_template";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_resolver
        (aws_appsync_resolver ?code ?data_source ?id ?kind
           ?max_batch_size ?request_template ?response_template
           ~caching_config ~pipeline_config ~runtime ~sync_config
           ~api_id ~field ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?code ?data_source ?id ?kind ?max_batch_size
    ?request_template ?response_template ?(caching_config = [])
    ?(pipeline_config = []) ?(runtime = []) ?(sync_config = [])
    ~api_id ~field ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?code ?data_source ?id ?kind ?max_batch_size
      ?request_template ?response_template ~caching_config
      ~pipeline_config ~runtime ~sync_config ~api_id ~field ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
