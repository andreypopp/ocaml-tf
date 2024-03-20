(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_method_response = {
  http_method : string prop;
  id : string prop option; [@option]
  resource_id : string prop;
  response_models : (string * string prop) list option; [@option]
  response_parameters : (string * bool prop) list option; [@option]
  rest_api_id : string prop;
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_method_response) -> ()

let yojson_of_aws_api_gateway_method_response =
  (function
   | {
       http_method = v_http_method;
       id = v_id;
       resource_id = v_resource_id;
       response_models = v_response_models;
       response_parameters = v_response_parameters;
       rest_api_id = v_rest_api_id;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
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
                       and v1 = yojson_of_prop yojson_of_bool v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "response_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_models with
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
             let bnd = "response_models", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_http_method in
         ("http_method", arg) :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_method_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_method_response

[@@@deriving.end]

let aws_api_gateway_method_response ?id ?response_models
    ?response_parameters ~http_method ~resource_id ~rest_api_id
    ~status_code () : aws_api_gateway_method_response =
  {
    http_method;
    id;
    resource_id;
    response_models;
    response_parameters;
    rest_api_id;
    status_code;
  }

type t = {
  http_method : string prop;
  id : string prop;
  resource_id : string prop;
  response_models : (string * string) list prop;
  response_parameters : (string * bool) list prop;
  rest_api_id : string prop;
  status_code : string prop;
}

let make ?id ?response_models ?response_parameters ~http_method
    ~resource_id ~rest_api_id ~status_code __id =
  let __type = "aws_api_gateway_method_response" in
  let __attrs =
    ({
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       resource_id = Prop.computed __type __id "resource_id";
       response_models = Prop.computed __type __id "response_models";
       response_parameters =
         Prop.computed __type __id "response_parameters";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       status_code = Prop.computed __type __id "status_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_method_response
        (aws_api_gateway_method_response ?id ?response_models
           ?response_parameters ~http_method ~resource_id
           ~rest_api_id ~status_code ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?response_models ?response_parameters
    ~http_method ~resource_id ~rest_api_id ~status_code __id =
  let (r : _ Tf_core.resource) =
    make ?id ?response_models ?response_parameters ~http_method
      ~resource_id ~rest_api_id ~status_code __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
