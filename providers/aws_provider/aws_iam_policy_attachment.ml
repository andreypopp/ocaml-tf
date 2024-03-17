(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_policy_attachment = {
  groups : string prop list option; [@option]  (** groups *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_arn : string prop;  (** policy_arn *)
  roles : string prop list option; [@option]  (** roles *)
  users : string prop list option; [@option]  (** users *)
}
[@@deriving yojson_of]
(** aws_iam_policy_attachment *)

let aws_iam_policy_attachment ?groups ?id ?roles ?users ~name
    ~policy_arn __resource_id =
  let __resource_type = "aws_iam_policy_attachment" in
  let __resource = { groups; id; name; policy_arn; roles; users } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_policy_attachment __resource);
  ()
