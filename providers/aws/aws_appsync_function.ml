(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
         let arg =
           yojson_of_list
             yojson_of_sync_config__lambda_conflict_handler_config
             v_lambda_conflict_handler_config
         in
         ("lambda_conflict_handler_config", arg) :: bnds
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

type aws_appsync_function = {
  api_id : string prop;
  code : string prop option; [@option]
  data_source : string prop;
  description : string prop option; [@option]
  function_version : string prop option; [@option]
  id : string prop option; [@option]
  max_batch_size : float prop option; [@option]
  name : string prop;
  request_mapping_template : string prop option; [@option]
  response_mapping_template : string prop option; [@option]
  runtime : runtime list;
  sync_config : sync_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_function) -> ()

let yojson_of_aws_appsync_function =
  (function
   | {
       api_id = v_api_id;
       code = v_code;
       data_source = v_data_source;
       description = v_description;
       function_version = v_function_version;
       id = v_id;
       max_batch_size = v_max_batch_size;
       name = v_name;
       request_mapping_template = v_request_mapping_template;
       response_mapping_template = v_response_mapping_template;
       runtime = v_runtime;
       sync_config = v_sync_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sync_config v_sync_config
         in
         ("sync_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_runtime v_runtime in
         ("runtime", arg) :: bnds
       in
       let bnds =
         match v_response_mapping_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_mapping_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_mapping_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_mapping_template", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_function_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "function_version", arg in
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
         let arg = yojson_of_prop yojson_of_string v_data_source in
         ("data_source", arg) :: bnds
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
    : aws_appsync_function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_function

[@@@deriving.end]

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

let aws_appsync_function ?code ?description ?function_version ?id
    ?max_batch_size ?request_mapping_template
    ?response_mapping_template ?(runtime = []) ?(sync_config = [])
    ~api_id ~data_source ~name () : aws_appsync_function =
  {
    api_id;
    code;
    data_source;
    description;
    function_version;
    id;
    max_batch_size;
    name;
    request_mapping_template;
    response_mapping_template;
    runtime;
    sync_config;
  }

type t = {
  tf_name : string;
  api_id : string prop;
  arn : string prop;
  code : string prop;
  data_source : string prop;
  description : string prop;
  function_id : string prop;
  function_version : string prop;
  id : string prop;
  max_batch_size : float prop;
  name : string prop;
  request_mapping_template : string prop;
  response_mapping_template : string prop;
}

let make ?code ?description ?function_version ?id ?max_batch_size
    ?request_mapping_template ?response_mapping_template
    ?(runtime = []) ?(sync_config = []) ~api_id ~data_source ~name
    __id =
  let __type = "aws_appsync_function" in
  let __attrs =
    ({
       tf_name = __id;
       api_id = Prop.computed __type __id "api_id";
       arn = Prop.computed __type __id "arn";
       code = Prop.computed __type __id "code";
       data_source = Prop.computed __type __id "data_source";
       description = Prop.computed __type __id "description";
       function_id = Prop.computed __type __id "function_id";
       function_version =
         Prop.computed __type __id "function_version";
       id = Prop.computed __type __id "id";
       max_batch_size = Prop.computed __type __id "max_batch_size";
       name = Prop.computed __type __id "name";
       request_mapping_template =
         Prop.computed __type __id "request_mapping_template";
       response_mapping_template =
         Prop.computed __type __id "response_mapping_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_function
        (aws_appsync_function ?code ?description ?function_version
           ?id ?max_batch_size ?request_mapping_template
           ?response_mapping_template ~runtime ~sync_config ~api_id
           ~data_source ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?code ?description ?function_version ?id
    ?max_batch_size ?request_mapping_template
    ?response_mapping_template ?(runtime = []) ?(sync_config = [])
    ~api_id ~data_source ~name __id =
  let (r : _ Tf_core.resource) =
    make ?code ?description ?function_version ?id ?max_batch_size
      ?request_mapping_template ?response_mapping_template ~runtime
      ~sync_config ~api_id ~data_source ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
