(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_group_policy = {
  group : string;  (** group *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_iam_group_policy *)

let aws_iam_group_policy ~group ~policy __resource_id =
  let __resource_type = "aws_iam_group_policy" in
  let __resource = { group; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group_policy __resource);
  ()
