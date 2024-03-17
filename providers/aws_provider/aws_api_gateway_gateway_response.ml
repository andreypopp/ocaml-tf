(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_gateway_response = {
  response_parameters : (string * string) list option; [@option]
      (** response_parameters *)
  response_templates : (string * string) list option; [@option]
      (** response_templates *)
  response_type : string;  (** response_type *)
  rest_api_id : string;  (** rest_api_id *)
  status_code : string option; [@option]  (** status_code *)
}
[@@deriving yojson_of]
(** aws_api_gateway_gateway_response *)

let aws_api_gateway_gateway_response ?response_parameters
    ?response_templates ?status_code ~response_type ~rest_api_id
    __resource_id =
  let __resource_type = "aws_api_gateway_gateway_response" in
  let __resource =
    {
      response_parameters;
      response_templates;
      response_type;
      rest_api_id;
      status_code;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_gateway_response __resource);
  ()
