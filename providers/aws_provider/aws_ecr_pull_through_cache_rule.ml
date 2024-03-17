(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecr_pull_through_cache_rule = {
  credential_arn : string prop option; [@option]
      (** credential_arn *)
  ecr_repository_prefix : string prop;  (** ecr_repository_prefix *)
  id : string prop option; [@option]  (** id *)
  upstream_registry_url : string prop;  (** upstream_registry_url *)
}
[@@deriving yojson_of]
(** aws_ecr_pull_through_cache_rule *)

type t = {
  credential_arn : string prop;
  ecr_repository_prefix : string prop;
  id : string prop;
  registry_id : string prop;
  upstream_registry_url : string prop;
}

let aws_ecr_pull_through_cache_rule ?credential_arn ?id
    ~ecr_repository_prefix ~upstream_registry_url __resource_id =
  let __resource_type = "aws_ecr_pull_through_cache_rule" in
  let __resource =
    ({
       credential_arn;
       ecr_repository_prefix;
       id;
       upstream_registry_url;
     }
      : aws_ecr_pull_through_cache_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_pull_through_cache_rule __resource);
  let __resource_attributes =
    ({
       credential_arn =
         Prop.computed __resource_type __resource_id "credential_arn";
       ecr_repository_prefix =
         Prop.computed __resource_type __resource_id
           "ecr_repository_prefix";
       id = Prop.computed __resource_type __resource_id "id";
       registry_id =
         Prop.computed __resource_type __resource_id "registry_id";
       upstream_registry_url =
         Prop.computed __resource_type __resource_id
           "upstream_registry_url";
     }
      : t)
  in
  __resource_attributes
