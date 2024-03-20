(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_deployment = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  rest_api_id : string prop;
  stage_description : string prop option; [@option]
  stage_name : string prop option; [@option]
  triggers : (string * string prop) list option; [@option]
  variables : (string * string prop) list option; [@option]
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
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_triggers with
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

let aws_api_gateway_deployment ?description ?id ?stage_description
    ?stage_name ?triggers ?variables ~rest_api_id () :
    aws_api_gateway_deployment =
  {
    description;
    id;
    rest_api_id;
    stage_description;
    stage_name;
    triggers;
    variables;
  }

type t = {
  created_date : string prop;
  description : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  rest_api_id : string prop;
  stage_description : string prop;
  stage_name : string prop;
  triggers : (string * string) list prop;
  variables : (string * string) list prop;
}

let make ?description ?id ?stage_description ?stage_name ?triggers
    ?variables ~rest_api_id __id =
  let __type = "aws_api_gateway_deployment" in
  let __attrs =
    ({
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
           ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?stage_description
    ?stage_name ?triggers ?variables ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?stage_description ?stage_name ?triggers
      ?variables ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
