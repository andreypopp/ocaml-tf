(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type canary_settings = {
  percent_traffic : float prop option; [@option]
  stage_variable_overrides : string prop Tf_core.assoc option;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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

type aws_api_gateway_deployment = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  rest_api_id : string prop;
  stage_description : string prop option; [@option]
  stage_name : string prop option; [@option]
  triggers : string prop Tf_core.assoc option; [@option]
  variables : string prop Tf_core.assoc option; [@option]
  canary_settings : canary_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_deployment) -> ()

let yojson_of_aws_api_gateway_deployment =
  (function
   | {
       description = v_description;
       id = v_id;
       rest_api_id = v_rest_api_id;
       stage_description = v_stage_description;
       stage_name = v_stage_name;
       triggers = v_triggers;
       variables = v_variables;
       canary_settings = v_canary_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_canary_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_canary_settings)
               v_canary_settings
           in
           let bnd = "canary_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_variables with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_triggers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "triggers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stage_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stage_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stage_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stage_description", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_deployment

[@@@deriving.end]

let canary_settings ?percent_traffic ?stage_variable_overrides
    ?use_stage_cache () : canary_settings =
  { percent_traffic; stage_variable_overrides; use_stage_cache }

let aws_api_gateway_deployment ?description ?id ?stage_description
    ?stage_name ?triggers ?variables ?(canary_settings = [])
    ~rest_api_id () : aws_api_gateway_deployment =
  {
    description;
    id;
    rest_api_id;
    stage_description;
    stage_name;
    triggers;
    variables;
    canary_settings;
  }

type t = {
  tf_name : string;
  created_date : string prop;
  description : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  rest_api_id : string prop;
  stage_description : string prop;
  stage_name : string prop;
  triggers : string Tf_core.assoc prop;
  variables : string Tf_core.assoc prop;
}

let make ?description ?id ?stage_description ?stage_name ?triggers
    ?variables ?(canary_settings = []) ~rest_api_id __id =
  let __type = "aws_api_gateway_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       execution_arn = Prop.computed __type __id "execution_arn";
       id = Prop.computed __type __id "id";
       invoke_url = Prop.computed __type __id "invoke_url";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       stage_description =
         Prop.computed __type __id "stage_description";
       stage_name = Prop.computed __type __id "stage_name";
       triggers = Prop.computed __type __id "triggers";
       variables = Prop.computed __type __id "variables";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_deployment
        (aws_api_gateway_deployment ?description ?id
           ?stage_description ?stage_name ?triggers ?variables
           ~canary_settings ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?stage_description
    ?stage_name ?triggers ?variables ?(canary_settings = [])
    ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?stage_description ?stage_name ?triggers
      ?variables ~canary_settings ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
