(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_rest_api_policy = {
  policy : string;  (** policy *)
  rest_api_id : string;  (** rest_api_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_rest_api_policy *)

let aws_api_gateway_rest_api_policy ~policy ~rest_api_id
    __resource_id =
  let __resource_type = "aws_api_gateway_rest_api_policy" in
  let __resource = { policy; rest_api_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_rest_api_policy __resource);
  ()
