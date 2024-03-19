(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_group_membership = {
  group : string prop;  (** group *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  users : string prop list;  (** users *)
}
[@@deriving yojson_of]
(** aws_iam_group_membership *)

let aws_iam_group_membership ?id ~group ~name ~users () :
    aws_iam_group_membership =
  { group; id; name; users }

type t = {
  group : string prop;
  id : string prop;
  name : string prop;
  users : string list prop;
}

let register ?tf_module ?id ~group ~name ~users __resource_id =
  let __resource_type = "aws_iam_group_membership" in
  let __resource =
    aws_iam_group_membership ?id ~group ~name ~users ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group_membership __resource);
  let __resource_attributes =
    ({
       group = Prop.computed __resource_type __resource_id "group";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       users = Prop.computed __resource_type __resource_id "users";
     }
      : t)
  in
  __resource_attributes
