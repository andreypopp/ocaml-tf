(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_policy = {
  description : string option; [@option]  (** description *)
  path : string option; [@option]  (** path *)
  policy : string;  (** policy *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_iam_policy *)

let aws_iam_policy ?description ?path ?tags ~policy __resource_id =
  let __resource_type = "aws_iam_policy" in
  let __resource = { description; path; policy; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_policy __resource);
  ()
