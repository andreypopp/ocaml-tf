(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_instance_profile = {
  path : string option; [@option]  (** path *)
  role : string option; [@option]  (** role *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_iam_instance_profile *)

let aws_iam_instance_profile ?path ?role ?tags __resource_id =
  let __resource_type = "aws_iam_instance_profile" in
  let __resource = { path; role; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_instance_profile __resource);
  ()
