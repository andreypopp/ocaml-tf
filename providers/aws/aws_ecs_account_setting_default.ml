(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_account_setting_default = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_account_setting_default *)

let aws_ecs_account_setting_default ?id ~name ~value () :
    aws_ecs_account_setting_default =
  { id; name; value }

type t = {
  id : string prop;
  name : string prop;
  principal_arn : string prop;
  value : string prop;
}

let register ?tf_module ?id ~name ~value __resource_id =
  let __resource_type = "aws_ecs_account_setting_default" in
  let __resource =
    aws_ecs_account_setting_default ?id ~name ~value ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_account_setting_default __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       principal_arn =
         Prop.computed __resource_type __resource_id "principal_arn";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
