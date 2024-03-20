(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_method_response = {
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
  response_models : (string * string prop) list option; [@option]
      (** response_models *)
  response_parameters : (string * bool prop) list option; [@option]
      (** response_parameters *)
  rest_api_id : string prop;  (** rest_api_id *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_api_gateway_method_response *)

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
