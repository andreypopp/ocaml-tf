(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codeartifact_domain = {
  domain : string;  (** domain *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_codeartifact_domain *)

let aws_codeartifact_domain ?tags ~domain __resource_id =
  let __resource_type = "aws_codeartifact_domain" in
  let __resource = { domain; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeartifact_domain __resource);
  ()
