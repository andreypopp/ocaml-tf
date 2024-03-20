(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_method = {
  api_key_required : bool prop option; [@option]
  authorization : string prop;
  authorization_scopes : string prop list option; [@option]
  authorizer_id : string prop option; [@option]
  http_method : string prop;
  id : string prop option; [@option]
  operation_name : string prop option; [@option]
  request_models : (string * string prop) list option; [@option]
  request_parameters : (string * bool prop) list option; [@option]
  request_validator_id : string prop option; [@option]
  resource_id : string prop;
  rest_api_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_method) -> ()

let yojson_of_aws_api_gateway_method =
  (function
   | {
       api_key_required = v_api_key_required;
       authorization = v_authorization;
       authorization_scopes = v_authorization_scopes;
       authorizer_id = v_authorizer_id;
       http_method = v_http_method;
       id = v_id;
       operation_name = v_operation_name;
       request_models = v_request_models;
       request_parameters = v_request_parameters;
       request_validator_id = v_request_validator_id;
       resource_id = v_resource_id;
       rest_api_id = v_rest_api_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         match v_request_validator_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_validator_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_parameters with
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
             let bnd = "request_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_models with
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
             let bnd = "request_models", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operation_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation_name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_http_method in
         ("http_method", arg) :: bnds
       in
       let bnds =
         match v_authorizer_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorizer_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "authorization_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_authorization in
         ("authorization", arg) :: bnds
       in
       let bnds =
         match v_api_key_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "api_key_required", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_method -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_method

[@@@deriving.end]

let aws_api_gateway_method ?api_key_required ?authorization_scopes
    ?authorizer_id ?id ?operation_name ?request_models
    ?request_parameters ?request_validator_id ~authorization
    ~http_method ~resource_id ~rest_api_id () :
    aws_api_gateway_method =
  {
    api_key_required;
    authorization;
    authorization_scopes;
    authorizer_id;
    http_method;
    id;
    operation_name;
    request_models;
    request_parameters;
    request_validator_id;
    resource_id;
    rest_api_id;
  }

type t = {
  api_key_required : bool prop;
  authorization : string prop;
  authorization_scopes : string list prop;
  authorizer_id : string prop;
  http_method : string prop;
  id : string prop;
  operation_name : string prop;
  request_models : (string * string) list prop;
  request_parameters : (string * bool) list prop;
  request_validator_id : string prop;
  resource_id : string prop;
  rest_api_id : string prop;
}

let make ?api_key_required ?authorization_scopes ?authorizer_id ?id
    ?operation_name ?request_models ?request_parameters
    ?request_validator_id ~authorization ~http_method ~resource_id
    ~rest_api_id __id =
  let __type = "aws_api_gateway_method" in
  let __attrs =
    ({
       api_key_required =
         Prop.computed __type __id "api_key_required";
       authorization = Prop.computed __type __id "authorization";
       authorization_scopes =
         Prop.computed __type __id "authorization_scopes";
       authorizer_id = Prop.computed __type __id "authorizer_id";
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       operation_name = Prop.computed __type __id "operation_name";
       request_models = Prop.computed __type __id "request_models";
       request_parameters =
         Prop.computed __type __id "request_parameters";
       request_validator_id =
         Prop.computed __type __id "request_validator_id";
       resource_id = Prop.computed __type __id "resource_id";
       rest_api_id = Prop.computed __type __id "rest_api_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_method
        (aws_api_gateway_method ?api_key_required
           ?authorization_scopes ?authorizer_id ?id ?operation_name
           ?request_models ?request_parameters ?request_validator_id
           ~authorization ~http_method ~resource_id ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?api_key_required ?authorization_scopes
    ?authorizer_id ?id ?operation_name ?request_models
    ?request_parameters ?request_validator_id ~authorization
    ~http_method ~resource_id ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?api_key_required ?authorization_scopes ?authorizer_id ?id
      ?operation_name ?request_models ?request_parameters
      ?request_validator_id ~authorization ~http_method ~resource_id
      ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
