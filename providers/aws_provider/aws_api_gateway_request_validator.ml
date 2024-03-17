(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_request_validator = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  rest_api_id : string;  (** rest_api_id *)
  validate_request_body : bool option; [@option]
      (** validate_request_body *)
  validate_request_parameters : bool option; [@option]
      (** validate_request_parameters *)
}
[@@deriving yojson_of]
(** aws_api_gateway_request_validator *)

let aws_api_gateway_request_validator ?id ?validate_request_body
    ?validate_request_parameters ~name ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_request_validator" in
  let __resource =
    {
      id;
      name;
      rest_api_id;
      validate_request_body;
      validate_request_parameters;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_request_validator __resource);
  ()
