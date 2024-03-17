(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_customerprofiles_domain__matching__auto_merging__conflict_resolution = {
  conflict_resolving_model : string;  (** conflict_resolving_model *)
  source_name : string option; [@option]  (** source_name *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__matching__auto_merging__conflict_resolution *)

type aws_customerprofiles_domain__matching__auto_merging__consolidation = {
  matching_attributes_list : string list list;
      (** matching_attributes_list *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__matching__auto_merging__consolidation *)

type aws_customerprofiles_domain__matching__auto_merging = {
  enabled : bool;  (** enabled *)
  min_allowed_confidence_score_for_merging : float option; [@option]
      (** min_allowed_confidence_score_for_merging *)
  conflict_resolution :
    aws_customerprofiles_domain__matching__auto_merging__conflict_resolution
    list;
  consolidation :
    aws_customerprofiles_domain__matching__auto_merging__consolidation
    list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__matching__auto_merging *)

type aws_customerprofiles_domain__matching__exporting_config__s3_exporting = {
  s3_bucket_name : string;  (** s3_bucket_name *)
  s3_key_name : string option; [@option]  (** s3_key_name *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__matching__exporting_config__s3_exporting *)

type aws_customerprofiles_domain__matching__exporting_config = {
  s3_exporting :
    aws_customerprofiles_domain__matching__exporting_config__s3_exporting
    list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__matching__exporting_config *)

type aws_customerprofiles_domain__matching__job_schedule = {
  day_of_the_week : string;  (** day_of_the_week *)
  time : string;  (** time *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__matching__job_schedule *)

type aws_customerprofiles_domain__matching = {
  enabled : bool;  (** enabled *)
  auto_merging :
    aws_customerprofiles_domain__matching__auto_merging list;
  exporting_config :
    aws_customerprofiles_domain__matching__exporting_config list;
  job_schedule :
    aws_customerprofiles_domain__matching__job_schedule list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__matching *)

type aws_customerprofiles_domain__rule_based_matching__attribute_types_selector = {
  address : string list option; [@option]  (** address *)
  attribute_matching_model : string;  (** attribute_matching_model *)
  email_address : string list option; [@option]  (** email_address *)
  phone_number : string list option; [@option]  (** phone_number *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__rule_based_matching__attribute_types_selector *)

type aws_customerprofiles_domain__rule_based_matching__conflict_resolution = {
  conflict_resolving_model : string;  (** conflict_resolving_model *)
  source_name : string option; [@option]  (** source_name *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__rule_based_matching__conflict_resolution *)

type aws_customerprofiles_domain__rule_based_matching__exporting_config__s3_exporting = {
  s3_bucket_name : string;  (** s3_bucket_name *)
  s3_key_name : string option; [@option]  (** s3_key_name *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__rule_based_matching__exporting_config__s3_exporting *)

type aws_customerprofiles_domain__rule_based_matching__exporting_config = {
  s3_exporting :
    aws_customerprofiles_domain__rule_based_matching__exporting_config__s3_exporting
    list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__rule_based_matching__exporting_config *)

type aws_customerprofiles_domain__rule_based_matching__matching_rules = {
  rule : string list;  (** rule *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__rule_based_matching__matching_rules *)

type aws_customerprofiles_domain__rule_based_matching = {
  enabled : bool;  (** enabled *)
  max_allowed_rule_level_for_matching : float option; [@option]
      (** max_allowed_rule_level_for_matching *)
  max_allowed_rule_level_for_merging : float option; [@option]
      (** max_allowed_rule_level_for_merging *)
  status : string option; [@option]  (** status *)
  attribute_types_selector :
    aws_customerprofiles_domain__rule_based_matching__attribute_types_selector
    list;
  conflict_resolution :
    aws_customerprofiles_domain__rule_based_matching__conflict_resolution
    list;
  exporting_config :
    aws_customerprofiles_domain__rule_based_matching__exporting_config
    list;
  matching_rules :
    aws_customerprofiles_domain__rule_based_matching__matching_rules
    list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain__rule_based_matching *)

type aws_customerprofiles_domain = {
  dead_letter_queue_url : string option; [@option]
      (** dead_letter_queue_url *)
  default_encryption_key : string option; [@option]
      (** default_encryption_key *)
  default_expiration_days : float;  (** default_expiration_days *)
  domain_name : string;  (** domain_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  matching : aws_customerprofiles_domain__matching list;
  rule_based_matching :
    aws_customerprofiles_domain__rule_based_matching list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain *)

let aws_customerprofiles_domain ?dead_letter_queue_url
    ?default_encryption_key ?tags ~default_expiration_days
    ~domain_name ~matching ~rule_based_matching __resource_id =
  let __resource_type = "aws_customerprofiles_domain" in
  let __resource =
    {
      dead_letter_queue_url;
      default_encryption_key;
      default_expiration_days;
      domain_name;
      tags;
      matching;
      rule_based_matching;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_customerprofiles_domain __resource);
  ()
