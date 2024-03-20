(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_request_validator = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rest_api_id : string prop;  (** rest_api_id *)
  validate_request_body : bool prop option; [@option]
      (** validate_request_body *)
  validate_request_parameters : bool prop option; [@option]
      (** validate_request_parameters *)
}
[@@deriving yojson_of]
(** aws_api_gateway_request_validator *)

let aws_api_gateway_request_validator ?id ?validate_request_body
    ?validate_request_parameters ~name ~rest_api_id () :
    aws_api_gateway_request_validator =
  {
    id;
    name;
    rest_api_id;
    validate_request_body;
    validate_request_parameters;
  }

type t = {
  id : string prop;
  name : string prop;
  rest_api_id : string prop;
  validate_request_body : bool prop;
  validate_request_parameters : bool prop;
}

let make ?id ?validate_request_body ?validate_request_parameters
    ~name ~rest_api_id __id =
  let __type = "aws_api_gateway_request_validator" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       validate_request_body =
         Prop.computed __type __id "validate_request_body";
       validate_request_parameters =
         Prop.computed __type __id "validate_request_parameters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_request_validator
        (aws_api_gateway_request_validator ?id ?validate_request_body
           ?validate_request_parameters ~name ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?validate_request_body
    ?validate_request_parameters ~name ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?validate_request_body ?validate_request_parameters
      ~name ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
