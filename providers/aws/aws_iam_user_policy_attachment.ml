(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_policy_attachment *)

let aws_iam_user_policy_attachment ?id ~policy_arn ~user () :
    aws_iam_user_policy_attachment =
  { id; policy_arn; user }

type t = {
  id : string prop;
  policy_arn : string prop;
  user : string prop;
}

let register ?tf_module ?id ~policy_arn ~user __resource_id =
  let __resource_type = "aws_iam_user_policy_attachment" in
  let __resource =
    aws_iam_user_policy_attachment ?id ~policy_arn ~user ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_policy_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy_arn =
         Prop.computed __resource_type __resource_id "policy_arn";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes
