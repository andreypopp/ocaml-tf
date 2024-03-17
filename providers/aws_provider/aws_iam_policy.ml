(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_policy = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  path : string option; [@option]  (** path *)
  policy : string;  (** policy *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_policy *)

let aws_iam_policy ?description ?id ?name ?name_prefix ?path ?tags
    ?tags_all ~policy __resource_id =
  let __resource_type = "aws_iam_policy" in
  let __resource =
    {
      description;
      id;
      name;
      name_prefix;
      path;
      policy;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_policy __resource);
  ()
