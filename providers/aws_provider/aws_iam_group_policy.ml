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

let aws_iam_group_policy ?id ?name ?name_prefix ~group ~policy
    __resource_id =
  let __resource_type = "aws_iam_group_policy" in
  let __resource = { group; id; name; name_prefix; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group_policy __resource);
  ()
