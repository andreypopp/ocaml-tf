(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_codeartifact_repository_permissions_policy = {
  domain : string;  (** domain *)
  policy_document : string;  (** policy_document *)
  repository : string;  (** repository *)
}
[@@deriving yojson_of]
(** aws_codeartifact_repository_permissions_policy *)

let aws_codeartifact_repository_permissions_policy ~domain
    ~policy_document ~repository __resource_id =
  let __resource_type =
    "aws_codeartifact_repository_permissions_policy"
  in
  let __resource = { domain; policy_document; repository } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeartifact_repository_permissions_policy
       __resource);
  ()
