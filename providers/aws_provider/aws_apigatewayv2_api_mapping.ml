(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_apigatewayv2_api_mapping = {
  api_id : string;  (** api_id *)
  api_mapping_key : string option; [@option]  (** api_mapping_key *)
  domain_name : string;  (** domain_name *)
  stage : string;  (** stage *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_api_mapping *)

let aws_apigatewayv2_api_mapping ?api_mapping_key ~api_id
    ~domain_name ~stage __resource_id =
  let __resource_type = "aws_apigatewayv2_api_mapping" in
  let __resource = { api_id; api_mapping_key; domain_name; stage } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_api_mapping __resource);
  ()
