(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_deployment = {
  api_id : string;  (** api_id *)
  description : string option; [@option]  (** description *)
  triggers : (string * string) list option; [@option]  (** triggers *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_deployment *)

let aws_apigatewayv2_deployment ?description ?triggers ~api_id
    __resource_id =
  let __resource_type = "aws_apigatewayv2_deployment" in
  let __resource = { api_id; description; triggers } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_deployment __resource);
  ()
