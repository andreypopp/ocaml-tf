(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type t = {
  id : string prop;
  name : string prop;
  rest_api_id : string prop;
  validate_request_body : bool prop;
  validate_request_parameters : bool prop;
}

let aws_api_gateway_request_validator ?id ?validate_request_body
    ?validate_request_parameters ~name ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_request_validator" in
  let __resource =
    ({
       id;
       name;
       rest_api_id;
       validate_request_body;
       validate_request_parameters;
     }
      : aws_api_gateway_request_validator)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_request_validator __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
       validate_request_body =
         Prop.computed __resource_type __resource_id
           "validate_request_body";
       validate_request_parameters =
         Prop.computed __resource_type __resource_id
           "validate_request_parameters";
     }
      : t)
  in
  __resource_attributes
