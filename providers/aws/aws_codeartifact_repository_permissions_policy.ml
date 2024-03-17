(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codeartifact_repository_permissions_policy = {
  domain : string prop;  (** domain *)
  domain_owner : string prop option; [@option]  (** domain_owner *)
  id : string prop option; [@option]  (** id *)
  policy_document : string prop;  (** policy_document *)
  policy_revision : string prop option; [@option]
      (** policy_revision *)
  repository : string prop;  (** repository *)
}
[@@deriving yojson_of]
(** aws_codeartifact_repository_permissions_policy *)

type t = {
  domain : string prop;
  domain_owner : string prop;
  id : string prop;
  policy_document : string prop;
  policy_revision : string prop;
  repository : string prop;
  resource_arn : string prop;
}

let aws_codeartifact_repository_permissions_policy ?domain_owner ?id
    ?policy_revision ~domain ~policy_document ~repository
    __resource_id =
  let __resource_type =
    "aws_codeartifact_repository_permissions_policy"
  in
  let __resource =
    ({
       domain;
       domain_owner;
       id;
       policy_document;
       policy_revision;
       repository;
     }
      : aws_codeartifact_repository_permissions_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codeartifact_repository_permissions_policy
       __resource);
  let __resource_attributes =
    ({
       domain = Prop.computed __resource_type __resource_id "domain";
       domain_owner =
         Prop.computed __resource_type __resource_id "domain_owner";
       id = Prop.computed __resource_type __resource_id "id";
       policy_document =
         Prop.computed __resource_type __resource_id
           "policy_document";
       policy_revision =
         Prop.computed __resource_type __resource_id
           "policy_revision";
       repository =
         Prop.computed __resource_type __resource_id "repository";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
     }
      : t)
  in
  __resource_attributes
