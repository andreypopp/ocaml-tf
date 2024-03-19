(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_role_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  policy : string prop;  (** policy *)
  role : string prop;  (** role *)
}
[@@deriving yojson_of]
(** aws_iam_role_policy *)

let aws_iam_role_policy ?id ?name ?name_prefix ~policy ~role () :
    aws_iam_role_policy =
  { id; name; name_prefix; policy; role }

type t = {
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  role : string prop;
}

let register ?tf_module ?id ?name ?name_prefix ~policy ~role
    __resource_id =
  let __resource_type = "aws_iam_role_policy" in
  let __resource =
    aws_iam_role_policy ?id ?name ?name_prefix ~policy ~role ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_role_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       policy = Prop.computed __resource_type __resource_id "policy";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
