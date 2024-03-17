(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_permission_set_inline_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set_inline_policy__timeouts *)

type aws_ssoadmin_permission_set_inline_policy = {
  id : string prop option; [@option]  (** id *)
  inline_policy : string prop;  (** inline_policy *)
  instance_arn : string prop;  (** instance_arn *)
  permission_set_arn : string prop;  (** permission_set_arn *)
  timeouts :
    aws_ssoadmin_permission_set_inline_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set_inline_policy *)

type t = {
  id : string prop;
  inline_policy : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
}

let aws_ssoadmin_permission_set_inline_policy ?id ?timeouts
    ~inline_policy ~instance_arn ~permission_set_arn __resource_id =
  let __resource_type =
    "aws_ssoadmin_permission_set_inline_policy"
  in
  let __resource =
    ({
       id;
       inline_policy;
       instance_arn;
       permission_set_arn;
       timeouts;
     }
      : aws_ssoadmin_permission_set_inline_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
