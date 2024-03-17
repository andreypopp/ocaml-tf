(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecommit_repository = {
  default_branch : string prop option; [@option]
      (** default_branch *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  repository_name : string prop;  (** repository_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codecommit_repository *)

let aws_codecommit_repository ?default_branch ?description ?id
    ?kms_key_id ?tags ?tags_all ~repository_name __resource_id =
  let __resource_type = "aws_codecommit_repository" in
  let __resource =
    {
      default_branch;
      description;
      id;
      kms_key_id;
      repository_name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_repository __resource);
  ()
