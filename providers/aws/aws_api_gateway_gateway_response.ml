(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_gateway_response = {
  id : string prop option; [@option]  (** id *)
  response_parameters : (string * string prop) list option; [@option]
      (** response_parameters *)
  response_templates : (string * string prop) list option; [@option]
      (** response_templates *)
  response_type : string prop;  (** response_type *)
  rest_api_id : string prop;  (** rest_api_id *)
  status_code : string prop option; [@option]  (** status_code *)
}
[@@deriving yojson_of]
(** aws_api_gateway_gateway_response *)

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
