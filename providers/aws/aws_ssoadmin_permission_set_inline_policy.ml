(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ssoadmin_permission_set_inline_policy = {
  id : string prop option; [@option]  (** id *)
  inline_policy : string prop;  (** inline_policy *)
  instance_arn : string prop;  (** instance_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set_inline_policy *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ssoadmin_permission_set_inline_policy ?id ?timeouts
    ~inline_policy ~instance_arn ~permission_set_arn () :
    aws_ssoadmin_permission_set_inline_policy =
  { id; inline_policy; instance_arn; permission_set_arn; timeouts }

type t = {
  id : string prop;
  inline_policy : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
}

let register ?tf_module ?id ?timeouts ~inline_policy ~instance_arn
    ~permission_set_arn __resource_id =
  let __resource_type =
    "aws_ssoadmin_permission_set_inline_policy"
  in
  let __resource =
    aws_ssoadmin_permission_set_inline_policy ?id ?timeouts
      ~inline_policy ~instance_arn ~permission_set_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_permission_set_inline_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       inline_policy =
         Prop.computed __resource_type __resource_id "inline_policy";
       instance_arn =
         Prop.computed __resource_type __resource_id "instance_arn";
       permission_set_arn =
         Prop.computed __resource_type __resource_id
           "permission_set_arn";
     }
      : t)
  in
  __resource_attributes
