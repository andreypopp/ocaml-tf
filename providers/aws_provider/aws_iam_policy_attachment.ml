(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_policy_attachment = {
  groups : string list option; [@option]  (** groups *)
  name : string;  (** name *)
  policy_arn : string;  (** policy_arn *)
  roles : string list option; [@option]  (** roles *)
  users : string list option; [@option]  (** users *)
}
[@@deriving yojson_of]
(** aws_iam_policy_attachment *)

let aws_iam_policy_attachment ?groups ?roles ?users ~name ~policy_arn
    __resource_id =
  let __resource_type = "aws_iam_policy_attachment" in
  let __resource = { groups; name; policy_arn; roles; users } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_policy_attachment __resource);
  ()
