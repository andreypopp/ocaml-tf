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
    ~usage_plan_id () : aws_api_gateway_usage_plan_key =
  { id; key_id; key_type; usage_plan_id }

type t = {
  id : string prop;
  key_id : string prop;
  key_type : string prop;
  name : string prop;
  usage_plan_id : string prop;
  value : string prop;
}

let register ?tf_module ?id ~key_id ~key_type ~usage_plan_id
    __resource_id =
  let __resource_type = "aws_api_gateway_usage_plan_key" in
  let __resource =
    aws_api_gateway_usage_plan_key ?id ~key_id ~key_type
      ~usage_plan_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_usage_plan_key __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key_id = Prop.computed __resource_type __resource_id "key_id";
       key_type =
         Prop.computed __resource_type __resource_id "key_type";
       name = Prop.computed __resource_type __resource_id "name";
       usage_plan_id =
         Prop.computed __resource_type __resource_id "usage_plan_id";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
