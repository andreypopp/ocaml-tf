(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_instance_profile = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  path : string prop option; [@option]  (** path *)
  role : string prop option; [@option]  (** role *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_instance_profile *)

let aws_iam_instance_profile ?id ?name ?name_prefix ?path ?role ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_iam_instance_profile" in
  let __resource =
    { id; name; name_prefix; path; role; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_instance_profile __resource);
  ()
