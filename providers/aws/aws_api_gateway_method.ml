(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_method = {
  api_key_required : bool prop option; [@option]
      (** api_key_required *)
  authorization : string prop;  (** authorization *)
  authorization_scopes : string prop list option; [@option]
      (** authorization_scopes *)
  authorizer_id : string prop option; [@option]  (** authorizer_id *)
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  operation_name : string prop option; [@option]
      (** operation_name *)
  request_models : (string * string prop) list option; [@option]
      (** request_models *)
  request_parameters : (string * bool prop) list option; [@option]
      (** request_parameters *)
  request_validator_id : string prop option; [@option]
      (** request_validator_id *)
  resource_id : string prop;  (** resource_id *)
  rest_api_id : string prop;  (** rest_api_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_method *)

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
