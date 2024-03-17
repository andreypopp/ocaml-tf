(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codeartifact_repository_permissions_policy = {
  domain : string;  (** domain *)
  domain_owner : string option; [@option]  (** domain_owner *)
  id : string option; [@option]  (** id *)
  policy_document : string;  (** policy_document *)
  policy_revision : string option; [@option]  (** policy_revision *)
  repository : string;  (** repository *)
}
[@@deriving yojson_of]
(** aws_codeartifact_repository_permissions_policy *)

let aws_codeartifact_repository_permissions_policy ?domain_owner ?id
    ?policy_revision ~domain ~policy_document ~repository
    __resource_id =
  let __resource_type =
    "aws_codeartifact_repository_permissions_policy"
  in
  let __resource =
    {
      domain;
      domain_owner;
      id;
      policy_document;
      policy_revision;
      repository;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeartifact_repository_permissions_policy
       __resource);
  ()
