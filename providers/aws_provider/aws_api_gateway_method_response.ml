(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_api_gateway_method_response = {
  http_method : string;  (** http_method *)
  resource_id : string;  (** resource_id *)
  response_models : (string * string) list option; [@option]
      (** response_models *)
  response_parameters : (string * bool) list option; [@option]
      (** response_parameters *)
  rest_api_id : string;  (** rest_api_id *)
  status_code : string;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_api_gateway_method_response *)

let aws_api_gateway_method_response ?response_models
    ?response_parameters ~http_method ~resource_id ~rest_api_id
    ~status_code __resource_id =
  let __resource_type = "aws_api_gateway_method_response" in
  let __resource =
    {
      http_method;
      resource_id;
      response_models;
      response_parameters;
      rest_api_id;
      status_code;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_method_response __resource);
  ()
