(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_api_gateway_integration_response = {
  content_handling : string option; [@option]
      (** content_handling *)
  http_method : string;  (** http_method *)
  resource_id : string;  (** resource_id *)
  response_parameters : (string * string) list option; [@option]
      (** response_parameters *)
  response_templates : (string * string) list option; [@option]
      (** response_templates *)
  rest_api_id : string;  (** rest_api_id *)
  selection_pattern : string option; [@option]
      (** selection_pattern *)
  status_code : string;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_api_gateway_integration_response *)

let aws_api_gateway_integration_response ?content_handling
    ?response_parameters ?response_templates ?selection_pattern
    ~http_method ~resource_id ~rest_api_id ~status_code __resource_id
    =
  let __resource_type = "aws_api_gateway_integration_response" in
  let __resource =
    {
      content_handling;
      http_method;
      resource_id;
      response_parameters;
      response_templates;
      rest_api_id;
      selection_pattern;
      status_code;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_integration_response __resource);
  ()
