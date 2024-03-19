(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_tag = {
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  resource_arn : string prop;  (** resource_arn *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_tag *)

let aws_ecs_tag ?id ~key ~resource_arn ~value () : aws_ecs_tag =
  { id; key; resource_arn; value }

type t = {
  id : string prop;
  key : string prop;
  resource_arn : string prop;
  value : string prop;
}

let register ?tf_module ?id ~key ~resource_arn ~value __resource_id =
  let __resource_type = "aws_ecs_tag" in
  let __resource = aws_ecs_tag ?id ~key ~resource_arn ~value () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_tag __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
