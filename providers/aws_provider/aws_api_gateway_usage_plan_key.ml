(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_usage_plan_key = {
  key_id : string;  (** key_id *)
  key_type : string;  (** key_type *)
  usage_plan_id : string;  (** usage_plan_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan_key *)

let aws_api_gateway_usage_plan_key ~key_id ~key_type ~usage_plan_id
    __resource_id =
  let __resource_type = "aws_api_gateway_usage_plan_key" in
  let __resource = { key_id; key_type; usage_plan_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_usage_plan_key __resource);
  ()
