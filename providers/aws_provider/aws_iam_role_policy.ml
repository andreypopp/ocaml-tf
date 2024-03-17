(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_role_policy = {
  policy : string;  (** policy *)
  role : string;  (** role *)
}
[@@deriving yojson_of]
(** aws_iam_role_policy *)

let aws_iam_role_policy ~policy ~role __resource_id =
  let __resource_type = "aws_iam_role_policy" in
  let __resource = { policy; role } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_role_policy __resource);
  ()
