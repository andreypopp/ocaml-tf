(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_group_policy = {
  group : string prop;  (** group *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_iam_group_policy *)

let aws_iam_group_policy ?id ?name ?name_prefix ~group ~policy () :
    aws_iam_group_policy =
  { group; id; name; name_prefix; policy }

type t = {
  group : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
}

let register ?tf_module ?id ?name ?name_prefix ~group ~policy
    __resource_id =
  let __resource_type = "aws_iam_group_policy" in
  let __resource =
    aws_iam_group_policy ?id ?name ?name_prefix ~group ~policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group_policy __resource);
  let __resource_attributes =
    ({
       group = Prop.computed __resource_type __resource_id "group";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
