(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type matching__auto_merging__conflict_resolution = {
  conflict_resolving_model : string prop;
      (** conflict_resolving_model *)
  source_name : string prop option; [@option]  (** source_name *)
}
[@@deriving yojson_of]
(** matching__auto_merging__conflict_resolution *)

type matching__auto_merging__consolidation = {
  matching_attributes_list : string prop list list;
      (** matching_attributes_list *)
}
[@@deriving yojson_of]
(** matching__auto_merging__consolidation *)

type matching__auto_merging = {
  enabled : bool prop;  (** enabled *)
  min_allowed_confidence_score_for_merging : float prop option;
      [@option]
      (** min_allowed_confidence_score_for_merging *)
  conflict_resolution :
    matching__auto_merging__conflict_resolution list;
  consolidation : matching__auto_merging__consolidation list;
}
[@@deriving yojson_of]
(** matching__auto_merging *)

type matching__exporting_config__s3_exporting = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_name : string prop option; [@option]  (** s3_key_name *)
}
[@@deriving yojson_of]
(** matching__exporting_config__s3_exporting *)

type matching__exporting_config = {
  s3_exporting : matching__exporting_config__s3_exporting list;
}
[@@deriving yojson_of]
(** matching__exporting_config *)

type matching__job_schedule = {
  day_of_the_week : string prop;  (** day_of_the_week *)
  time : string prop;  (** time *)
}
[@@deriving yojson_of]
(** matching__job_schedule *)

type matching = {
  enabled : bool prop;  (** enabled *)
  auto_merging : matching__auto_merging list;
  exporting_config : matching__exporting_config list;
  job_schedule : matching__job_schedule list;
}
[@@deriving yojson_of]
(** matching *)

type rule_based_matching__attribute_types_selector = {
  address : string prop list option; [@option]  (** address *)
  attribute_matching_model : string prop;
      (** attribute_matching_model *)
  email_address : string prop list option; [@option]
      (** email_address *)
  phone_number : string prop list option; [@option]
      (** phone_number *)
}
[@@deriving yojson_of]
(** rule_based_matching__attribute_types_selector *)

type rule_based_matching__conflict_resolution = {
  conflict_resolving_model : string prop;
      (** conflict_resolving_model *)
  source_name : string prop option; [@option]  (** source_name *)
}
[@@deriving yojson_of]
(** rule_based_matching__conflict_resolution *)

type rule_based_matching__exporting_config__s3_exporting = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_name : string prop option; [@option]  (** s3_key_name *)
}
[@@deriving yojson_of]
(** rule_based_matching__exporting_config__s3_exporting *)

type rule_based_matching__exporting_config = {
  s3_exporting :
    rule_based_matching__exporting_config__s3_exporting list;
}
[@@deriving yojson_of]
(** rule_based_matching__exporting_config *)

type rule_based_matching__matching_rules = {
  rule : string prop list;  (** rule *)
}
[@@deriving yojson_of]
(** rule_based_matching__matching_rules *)

type rule_based_matching = {
  enabled : bool prop;  (** enabled *)
  max_allowed_rule_level_for_matching : float prop option; [@option]
      (** max_allowed_rule_level_for_matching *)
  max_allowed_rule_level_for_merging : float prop option; [@option]
      (** max_allowed_rule_level_for_merging *)
  status : string prop option; [@option]  (** status *)
  attribute_types_selector :
    rule_based_matching__attribute_types_selector list;
  conflict_resolution :
    rule_based_matching__conflict_resolution list;
  exporting_config : rule_based_matching__exporting_config list;
  matching_rules : rule_based_matching__matching_rules list;
}
[@@deriving yojson_of]
(** rule_based_matching *)

type aws_customerprofiles_domain = {
  dead_letter_queue_url : string prop option; [@option]
      (** dead_letter_queue_url *)
  default_encryption_key : string prop option; [@option]
      (** default_encryption_key *)
  default_expiration_days : float prop;
      (** default_expiration_days *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  matching : matching list;
  rule_based_matching : rule_based_matching list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_domain *)

let matching__auto_merging__conflict_resolution ?source_name
    ~conflict_resolving_model () :
    matching__auto_merging__conflict_resolution =
  { conflict_resolving_model; source_name }

let matching__auto_merging__consolidation ~matching_attributes_list
    () : matching__auto_merging__consolidation =
  { matching_attributes_list }

let matching__auto_merging ?min_allowed_confidence_score_for_merging
    ~enabled ~conflict_resolution ~consolidation () :
    matching__auto_merging =
  {
    enabled;
    min_allowed_confidence_score_for_merging;
    conflict_resolution;
    consolidation;
  }

let matching__exporting_config__s3_exporting ?s3_key_name
    ~s3_bucket_name () : matching__exporting_config__s3_exporting =
  { s3_bucket_name; s3_key_name }

let matching__exporting_config ~s3_exporting () :
    matching__exporting_config =
  { s3_exporting }

let matching__job_schedule ~day_of_the_week ~time () :
    matching__job_schedule =
  { day_of_the_week; time }

let matching ~enabled ~auto_merging ~exporting_config ~job_schedule
    () : matching =
  { enabled; auto_merging; exporting_config; job_schedule }

let rule_based_matching__attribute_types_selector ?address
    ?email_address ?phone_number ~attribute_matching_model () :
    rule_based_matching__attribute_types_selector =
  { address; attribute_matching_model; email_address; phone_number }

let rule_based_matching__conflict_resolution ?source_name
    ~conflict_resolving_model () :
    rule_based_matching__conflict_resolution =
  { conflict_resolving_model; source_name }

let rule_based_matching__exporting_config__s3_exporting ?s3_key_name
    ~s3_bucket_name () :
    rule_based_matching__exporting_config__s3_exporting =
  { s3_bucket_name; s3_key_name }

let rule_based_matching__exporting_config ~s3_exporting () :
    rule_based_matching__exporting_config =
  { s3_exporting }

let rule_based_matching__matching_rules ~rule () :
    rule_based_matching__matching_rules =
  { rule }

let rule_based_matching ?max_allowed_rule_level_for_matching
    ?max_allowed_rule_level_for_merging ?status ~enabled
    ~attribute_types_selector ~conflict_resolution ~exporting_config
    ~matching_rules () : rule_based_matching =
  {
    enabled;
    max_allowed_rule_level_for_matching;
    max_allowed_rule_level_for_merging;
    status;
    attribute_types_selector;
    conflict_resolution;
    exporting_config;
    matching_rules;
  }

let aws_customerprofiles_domain ?dead_letter_queue_url
    ?default_encryption_key ?id ?tags ?tags_all
    ~default_expiration_days ~domain_name ~matching
    ~rule_based_matching () : aws_customerprofiles_domain =
  {
    dead_letter_queue_url;
    default_encryption_key;
    default_expiration_days;
    domain_name;
    id;
    tags;
    tags_all;
    matching;
    rule_based_matching;
  }

type t = {
  arn : string prop;
  dead_letter_queue_url : string prop;
  default_encryption_key : string prop;
  default_expiration_days : float prop;
  domain_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?dead_letter_queue_url
    ?default_encryption_key ?id ?tags ?tags_all
    ~default_expiration_days ~domain_name ~matching
    ~rule_based_matching __resource_id =
  let __resource_type = "aws_customerprofiles_domain" in
  let __resource =
    aws_customerprofiles_domain ?dead_letter_queue_url
      ?default_encryption_key ?id ?tags ?tags_all
      ~default_expiration_days ~domain_name ~matching
      ~rule_based_matching ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_customerprofiles_domain __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       dead_letter_queue_url =
         Prop.computed __resource_type __resource_id
           "dead_letter_queue_url";
       default_encryption_key =
         Prop.computed __resource_type __resource_id
           "default_encryption_key";
       default_expiration_days =
         Prop.computed __resource_type __resource_id
           "default_expiration_days";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
