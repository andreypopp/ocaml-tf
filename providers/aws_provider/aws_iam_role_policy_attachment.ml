(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_role_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
  role : string prop;  (** role *)
}
[@@deriving yojson_of]
(** aws_iam_role_policy_attachment *)

type t = {
  id : string prop;
  policy_arn : string prop;
  role : string prop;
}

let aws_iam_role_policy_attachment ?id ~policy_arn ~role
    __resource_id =
  let __resource_type = "aws_iam_role_policy_attachment" in
  let __resource =
    ({ id; policy_arn; role } : aws_iam_role_policy_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_role_policy_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy_arn =
         Prop.computed __resource_type __resource_id "policy_arn";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
