(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_usage_plan_key = {
  id : string prop option; [@option]  (** id *)
  key_id : string prop;  (** key_id *)
  key_type : string prop;  (** key_type *)
  usage_plan_id : string prop;  (** usage_plan_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan_key *)

let aws_api_gateway_usage_plan_key ?id ~key_id ~key_type
    ~usage_plan_id __resource_id =
  let __resource_type = "aws_api_gateway_usage_plan_key" in
  let __resource = { id; key_id; key_type; usage_plan_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_usage_plan_key __resource);
  ()
