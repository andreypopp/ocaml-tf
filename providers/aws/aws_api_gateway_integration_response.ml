(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_integration_response = {
  content_handling : string prop option; [@option]
      (** content_handling *)
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
  response_parameters : (string * string prop) list option; [@option]
      (** response_parameters *)
  response_templates : (string * string prop) list option; [@option]
      (** response_templates *)
  rest_api_id : string prop;  (** rest_api_id *)
  selection_pattern : string prop option; [@option]
      (** selection_pattern *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_api_gateway_integration_response *)

let aws_api_gateway_integration_response ?content_handling ?id
    ?response_parameters ?response_templates ?selection_pattern
    ~http_method ~resource_id ~rest_api_id ~status_code () :
    aws_api_gateway_integration_response =
  {
    content_handling;
    http_method;
    id;
    resource_id;
    response_parameters;
    response_templates;
    rest_api_id;
    selection_pattern;
    status_code;
  }

type t = {
  content_handling : string prop;
  http_method : string prop;
  id : string prop;
  resource_id : string prop;
  response_parameters : (string * string) list prop;
  response_templates : (string * string) list prop;
  rest_api_id : string prop;
  selection_pattern : string prop;
  status_code : string prop;
}

let make ?content_handling ?id ?response_parameters
    ?response_templates ?selection_pattern ~http_method ~resource_id
    ~rest_api_id ~status_code __id =
  let __type = "aws_api_gateway_integration_response" in
  let __attrs =
    ({
       content_handling =
         Prop.computed __type __id "content_handling";
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       resource_id = Prop.computed __type __id "resource_id";
       response_parameters =
         Prop.computed __type __id "response_parameters";
       response_templates =
         Prop.computed __type __id "response_templates";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       selection_pattern =
         Prop.computed __type __id "selection_pattern";
       status_code = Prop.computed __type __id "status_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_integration_response
        (aws_api_gateway_integration_response ?content_handling ?id
           ?response_parameters ?response_templates
           ?selection_pattern ~http_method ~resource_id ~rest_api_id
           ~status_code ());
    attrs = __attrs;
  }

let register ?tf_module ?content_handling ?id ?response_parameters
    ?response_templates ?selection_pattern ~http_method ~resource_id
    ~rest_api_id ~status_code __id =
  let (r : _ Tf_core.resource) =
    make ?content_handling ?id ?response_parameters
      ?response_templates ?selection_pattern ~http_method
      ~resource_id ~rest_api_id ~status_code __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
