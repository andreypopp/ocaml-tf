(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_group_membership = {
  group : string;  (** group *)
  name : string;  (** name *)
  users : string list;  (** users *)
}
[@@deriving yojson_of]
(** aws_iam_group_membership *)

let aws_iam_group_membership ~group ~name ~users __resource_id =
  let __resource_type = "aws_iam_group_membership" in
  let __resource = { group; name; users } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group_membership __resource);
  ()
