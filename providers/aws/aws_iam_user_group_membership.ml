(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user_group_membership = {
  groups : string prop list;  (** groups *)
  id : string prop option; [@option]  (** id *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_group_membership *)

let aws_iam_user_group_membership ?id ~groups ~user () :
    aws_iam_user_group_membership =
  { groups; id; user }

type t = {
  groups : string list prop;
  id : string prop;
  user : string prop;
}

let register ?tf_module ?id ~groups ~user __resource_id =
  let __resource_type = "aws_iam_user_group_membership" in
  let __resource =
    aws_iam_user_group_membership ?id ~groups ~user ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_group_membership __resource);
  let __resource_attributes =
    ({
       groups = Prop.computed __resource_type __resource_id "groups";
       id = Prop.computed __resource_type __resource_id "id";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes
