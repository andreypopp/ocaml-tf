(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_gateway_response = {
  id : string prop option; [@option]
  response_parameters : (string * string prop) list option; [@option]
  response_templates : (string * string prop) list option; [@option]
  response_type : string prop;
  rest_api_id : string prop;
  status_code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_gateway_response) -> ()

let yojson_of_aws_api_gateway_gateway_response =
  (function
   | {
       id = v_id;
       response_parameters = v_response_parameters;
       response_templates = v_response_templates;
       response_type = v_response_type;
       rest_api_id = v_rest_api_id;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_response_type in
         ("response_type", arg) :: bnds
       in
       let bnds =
         match v_response_templates with
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
             let bnd = "response_templates", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_parameters with
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
             let bnd = "response_parameters", arg in
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
       `Assoc bnds
    : aws_api_gateway_gateway_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_gateway_response

[@@@deriving.end]

let aws_api_gateway_gateway_response ?id ?response_parameters
    ?response_templates ?status_code ~response_type ~rest_api_id () :
    aws_api_gateway_gateway_response =
  {
    id;
    response_parameters;
    response_templates;
    response_type;
    rest_api_id;
    status_code;
  }

type t = {
  tf_name : string;
  id : string prop;
  response_parameters : (string * string) list prop;
  response_templates : (string * string) list prop;
  response_type : string prop;
  rest_api_id : string prop;
  status_code : string prop;
}

let make ?id ?response_parameters ?response_templates ?status_code
    ~response_type ~rest_api_id __id =
  let __type = "aws_api_gateway_gateway_response" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       response_parameters =
         Prop.computed __type __id "response_parameters";
       response_templates =
         Prop.computed __type __id "response_templates";
       response_type = Prop.computed __type __id "response_type";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       status_code = Prop.computed __type __id "status_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_gateway_response
        (aws_api_gateway_gateway_response ?id ?response_parameters
           ?response_templates ?status_code ~response_type
           ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?response_parameters ?response_templates
    ?status_code ~response_type ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?response_parameters ?response_templates ?status_code
      ~response_type ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
