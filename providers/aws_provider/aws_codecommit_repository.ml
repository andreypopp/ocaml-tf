(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_codecommit_repository = {
  default_branch : string option; [@option]  (** default_branch *)
  description : string option; [@option]  (** description *)
  repository_name : string;  (** repository_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_codecommit_repository *)

let aws_codecommit_repository ?default_branch ?description ?tags
    ~repository_name __resource_id =
  let __resource_type = "aws_codecommit_repository" in
  let __resource =
    { default_branch; description; repository_name; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_repository __resource);
  ()
