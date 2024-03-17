(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codeartifact_domain = {
  domain : string;  (** domain *)
  encryption_key : string option; [@option]  (** encryption_key *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codeartifact_domain *)

let aws_codeartifact_domain ?encryption_key ?id ?tags ?tags_all
    ~domain __resource_id =
  let __resource_type = "aws_codeartifact_domain" in
  let __resource = { domain; encryption_key; id; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeartifact_domain __resource);
  ()
