(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_group = {
  name : string;  (** name *)
  path : string option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_iam_group *)

let aws_iam_group ?path ~name __resource_id =
  let __resource_type = "aws_iam_group" in
  let __resource = { name; path } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group __resource);
  ()
