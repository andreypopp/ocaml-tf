(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecr_pull_through_cache_rule = {
  credential_arn : string option; [@option]  (** credential_arn *)
  ecr_repository_prefix : string;  (** ecr_repository_prefix *)
  upstream_registry_url : string;  (** upstream_registry_url *)
}
[@@deriving yojson_of]
(** aws_ecr_pull_through_cache_rule *)

let aws_ecr_pull_through_cache_rule ?credential_arn
    ~ecr_repository_prefix ~upstream_registry_url __resource_id =
  let __resource_type = "aws_ecr_pull_through_cache_rule" in
  let __resource =
    { credential_arn; ecr_repository_prefix; upstream_registry_url }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_pull_through_cache_rule __resource);
  ()
