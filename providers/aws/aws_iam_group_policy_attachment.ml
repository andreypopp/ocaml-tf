(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_group_policy_attachment = {
  group : string prop;  (** group *)
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
}
[@@deriving yojson_of]
(** aws_iam_group_policy_attachment *)

let aws_iam_group_policy_attachment ?id ~group ~policy_arn () :
    aws_iam_group_policy_attachment =
  { group; id; policy_arn }

type t = {
  group : string prop;
  id : string prop;
  policy_arn : string prop;
}

let register ?tf_module ?id ~group ~policy_arn __resource_id =
  let __resource_type = "aws_iam_group_policy_attachment" in
  let __resource =
    aws_iam_group_policy_attachment ?id ~group ~policy_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group_policy_attachment __resource);
  let __resource_attributes =
    ({
       group = Prop.computed __resource_type __resource_id "group";
       id = Prop.computed __resource_type __resource_id "id";
       policy_arn =
         Prop.computed __resource_type __resource_id "policy_arn";
     }
      : t)
  in
  __resource_attributes
