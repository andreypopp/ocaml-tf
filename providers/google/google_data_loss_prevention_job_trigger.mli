(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type inspect_job__actions__deidentify__transformation_config

val inspect_job__actions__deidentify__transformation_config :
  ?deidentify_template:string prop ->
  ?image_redact_template:string prop ->
  ?structured_deidentify_template:string prop ->
  unit ->
  inspect_job__actions__deidentify__transformation_config

type inspect_job__actions__deidentify__transformation_details_storage_config__table

val inspect_job__actions__deidentify__transformation_details_storage_config__table :
  ?table_id:string prop ->
  dataset_id:string prop ->
  project_id:string prop ->
  unit ->
  inspect_job__actions__deidentify__transformation_details_storage_config__table

type inspect_job__actions__deidentify__transformation_details_storage_config

val inspect_job__actions__deidentify__transformation_details_storage_config :
  table:
    inspect_job__actions__deidentify__transformation_details_storage_config__table
    list ->
  unit ->
  inspect_job__actions__deidentify__transformation_details_storage_config

type inspect_job__actions__deidentify

val inspect_job__actions__deidentify :
  ?file_types_to_transform:string prop list ->
  ?transformation_config:
    inspect_job__actions__deidentify__transformation_config list ->
  ?transformation_details_storage_config:
    inspect_job__actions__deidentify__transformation_details_storage_config
    list ->
  cloud_storage_output:string prop ->
  unit ->
  inspect_job__actions__deidentify

type inspect_job__actions__job_notification_emails

val inspect_job__actions__job_notification_emails :
  unit -> inspect_job__actions__job_notification_emails

type inspect_job__actions__pub_sub

val inspect_job__actions__pub_sub :
  topic:string prop -> unit -> inspect_job__actions__pub_sub

type inspect_job__actions__publish_findings_to_cloud_data_catalog

val inspect_job__actions__publish_findings_to_cloud_data_catalog :
  unit ->
  inspect_job__actions__publish_findings_to_cloud_data_catalog

type inspect_job__actions__publish_summary_to_cscc

val inspect_job__actions__publish_summary_to_cscc :
  unit -> inspect_job__actions__publish_summary_to_cscc

type inspect_job__actions__publish_to_stackdriver

val inspect_job__actions__publish_to_stackdriver :
  unit -> inspect_job__actions__publish_to_stackdriver

type inspect_job__actions__save_findings__output_config__table

val inspect_job__actions__save_findings__output_config__table :
  ?table_id:string prop ->
  dataset_id:string prop ->
  project_id:string prop ->
  unit ->
  inspect_job__actions__save_findings__output_config__table

type inspect_job__actions__save_findings__output_config

val inspect_job__actions__save_findings__output_config :
  ?output_schema:string prop ->
  table:
    inspect_job__actions__save_findings__output_config__table list ->
  unit ->
  inspect_job__actions__save_findings__output_config

type inspect_job__actions__save_findings

val inspect_job__actions__save_findings :
  output_config:
    inspect_job__actions__save_findings__output_config list ->
  unit ->
  inspect_job__actions__save_findings

type inspect_job__actions

val inspect_job__actions :
  ?deidentify:inspect_job__actions__deidentify list ->
  ?job_notification_emails:
    inspect_job__actions__job_notification_emails list ->
  ?pub_sub:inspect_job__actions__pub_sub list ->
  ?publish_findings_to_cloud_data_catalog:
    inspect_job__actions__publish_findings_to_cloud_data_catalog list ->
  ?publish_summary_to_cscc:
    inspect_job__actions__publish_summary_to_cscc list ->
  ?publish_to_stackdriver:
    inspect_job__actions__publish_to_stackdriver list ->
  ?save_findings:inspect_job__actions__save_findings list ->
  unit ->
  inspect_job__actions

type inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path

val inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path :
  path:string prop ->
  unit ->
  inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path

type inspect_job__inspect_config__custom_info_types__dictionary__word_list

val inspect_job__inspect_config__custom_info_types__dictionary__word_list :
  words:string prop list ->
  unit ->
  inspect_job__inspect_config__custom_info_types__dictionary__word_list

type inspect_job__inspect_config__custom_info_types__dictionary

val inspect_job__inspect_config__custom_info_types__dictionary :
  ?cloud_storage_path:
    inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path
    list ->
  ?word_list:
    inspect_job__inspect_config__custom_info_types__dictionary__word_list
    list ->
  unit ->
  inspect_job__inspect_config__custom_info_types__dictionary

type inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score

val inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score

type inspect_job__inspect_config__custom_info_types__info_type

val inspect_job__inspect_config__custom_info_types__info_type :
  ?version:string prop ->
  ?sensitivity_score:
    inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score
    list ->
  name:string prop ->
  unit ->
  inspect_job__inspect_config__custom_info_types__info_type

type inspect_job__inspect_config__custom_info_types__regex

val inspect_job__inspect_config__custom_info_types__regex :
  ?group_indexes:float prop list ->
  pattern:string prop ->
  unit ->
  inspect_job__inspect_config__custom_info_types__regex

type inspect_job__inspect_config__custom_info_types__sensitivity_score

val inspect_job__inspect_config__custom_info_types__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_job__inspect_config__custom_info_types__sensitivity_score

type inspect_job__inspect_config__custom_info_types__stored_type

val inspect_job__inspect_config__custom_info_types__stored_type :
  name:string prop ->
  unit ->
  inspect_job__inspect_config__custom_info_types__stored_type

type inspect_job__inspect_config__custom_info_types__surrogate_type

val inspect_job__inspect_config__custom_info_types__surrogate_type :
  unit ->
  inspect_job__inspect_config__custom_info_types__surrogate_type

type inspect_job__inspect_config__custom_info_types

val inspect_job__inspect_config__custom_info_types :
  ?exclusion_type:string prop ->
  ?likelihood:string prop ->
  ?dictionary:
    inspect_job__inspect_config__custom_info_types__dictionary list ->
  ?regex:inspect_job__inspect_config__custom_info_types__regex list ->
  ?sensitivity_score:
    inspect_job__inspect_config__custom_info_types__sensitivity_score
    list ->
  ?stored_type:
    inspect_job__inspect_config__custom_info_types__stored_type list ->
  ?surrogate_type:
    inspect_job__inspect_config__custom_info_types__surrogate_type
    list ->
  info_type:
    inspect_job__inspect_config__custom_info_types__info_type list ->
  unit ->
  inspect_job__inspect_config__custom_info_types

type inspect_job__inspect_config__info_types__sensitivity_score

val inspect_job__inspect_config__info_types__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_job__inspect_config__info_types__sensitivity_score

type inspect_job__inspect_config__info_types

val inspect_job__inspect_config__info_types :
  ?version:string prop ->
  ?sensitivity_score:
    inspect_job__inspect_config__info_types__sensitivity_score list ->
  name:string prop ->
  unit ->
  inspect_job__inspect_config__info_types

type inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score

val inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score

type inspect_job__inspect_config__limits__max_findings_per_info_type__info_type

val inspect_job__inspect_config__limits__max_findings_per_info_type__info_type :
  ?version:string prop ->
  ?sensitivity_score:
    inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    list ->
  name:string prop ->
  unit ->
  inspect_job__inspect_config__limits__max_findings_per_info_type__info_type

type inspect_job__inspect_config__limits__max_findings_per_info_type

val inspect_job__inspect_config__limits__max_findings_per_info_type :
  ?max_findings:float prop ->
  ?info_type:
    inspect_job__inspect_config__limits__max_findings_per_info_type__info_type
    list ->
  unit ->
  inspect_job__inspect_config__limits__max_findings_per_info_type

type inspect_job__inspect_config__limits

val inspect_job__inspect_config__limits :
  ?max_findings_per_item:float prop ->
  ?max_findings_per_request:float prop ->
  ?max_findings_per_info_type:
    inspect_job__inspect_config__limits__max_findings_per_info_type
    list ->
  unit ->
  inspect_job__inspect_config__limits

type inspect_job__inspect_config__rule_set__info_types__sensitivity_score

val inspect_job__inspect_config__rule_set__info_types__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__info_types__sensitivity_score

type inspect_job__inspect_config__rule_set__info_types

val inspect_job__inspect_config__rule_set__info_types :
  ?version:string prop ->
  ?sensitivity_score:
    inspect_job__inspect_config__rule_set__info_types__sensitivity_score
    list ->
  name:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__info_types

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path :
  path:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list :
  words:string prop list ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary :
  ?cloud_storage_path:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    list ->
  ?word_list:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    list ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex :
  ?group_indexes:float prop list ->
  ?pattern:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity :
  ?window_after:float prop ->
  ?window_before:float prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword :
  ?hotword_regex:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    list ->
  ?proximity:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    list ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types :
  ?version:string prop ->
  ?sensitivity_score:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    list ->
  name:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types :
  info_types:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    list ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex

val inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex :
  ?group_indexes:float prop list ->
  pattern:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex

type inspect_job__inspect_config__rule_set__rules__exclusion_rule

val inspect_job__inspect_config__rule_set__rules__exclusion_rule :
  ?dictionary:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary
    list ->
  ?exclude_by_hotword:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    list ->
  ?exclude_info_types:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    list ->
  ?regex:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex
    list ->
  matching_type:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__exclusion_rule

type inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex

val inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex :
  ?group_indexes:float prop list ->
  ?pattern:string prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex

type inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment

val inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment :
  ?fixed_likelihood:string prop ->
  ?relative_likelihood:float prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment

type inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity

val inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity :
  ?window_after:float prop ->
  ?window_before:float prop ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity

type inspect_job__inspect_config__rule_set__rules__hotword_rule

val inspect_job__inspect_config__rule_set__rules__hotword_rule :
  ?hotword_regex:
    inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex
    list ->
  ?likelihood_adjustment:
    inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    list ->
  ?proximity:
    inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity
    list ->
  unit ->
  inspect_job__inspect_config__rule_set__rules__hotword_rule

type inspect_job__inspect_config__rule_set__rules

val inspect_job__inspect_config__rule_set__rules :
  ?exclusion_rule:
    inspect_job__inspect_config__rule_set__rules__exclusion_rule list ->
  ?hotword_rule:
    inspect_job__inspect_config__rule_set__rules__hotword_rule list ->
  unit ->
  inspect_job__inspect_config__rule_set__rules

type inspect_job__inspect_config__rule_set

val inspect_job__inspect_config__rule_set :
  ?info_types:inspect_job__inspect_config__rule_set__info_types list ->
  rules:inspect_job__inspect_config__rule_set__rules list ->
  unit ->
  inspect_job__inspect_config__rule_set

type inspect_job__inspect_config

val inspect_job__inspect_config :
  ?exclude_info_types:bool prop ->
  ?include_quote:bool prop ->
  ?min_likelihood:string prop ->
  ?custom_info_types:
    inspect_job__inspect_config__custom_info_types list ->
  ?info_types:inspect_job__inspect_config__info_types list ->
  ?limits:inspect_job__inspect_config__limits list ->
  ?rule_set:inspect_job__inspect_config__rule_set list ->
  unit ->
  inspect_job__inspect_config

type inspect_job__storage_config__big_query_options__excluded_fields

val inspect_job__storage_config__big_query_options__excluded_fields :
  name:string prop ->
  unit ->
  inspect_job__storage_config__big_query_options__excluded_fields

type inspect_job__storage_config__big_query_options__identifying_fields

val inspect_job__storage_config__big_query_options__identifying_fields :
  name:string prop ->
  unit ->
  inspect_job__storage_config__big_query_options__identifying_fields

type inspect_job__storage_config__big_query_options__included_fields

val inspect_job__storage_config__big_query_options__included_fields :
  name:string prop ->
  unit ->
  inspect_job__storage_config__big_query_options__included_fields

type inspect_job__storage_config__big_query_options__table_reference

val inspect_job__storage_config__big_query_options__table_reference :
  dataset_id:string prop ->
  project_id:string prop ->
  table_id:string prop ->
  unit ->
  inspect_job__storage_config__big_query_options__table_reference

type inspect_job__storage_config__big_query_options

val inspect_job__storage_config__big_query_options :
  ?rows_limit:float prop ->
  ?rows_limit_percent:float prop ->
  ?sample_method:string prop ->
  ?excluded_fields:
    inspect_job__storage_config__big_query_options__excluded_fields
    list ->
  ?identifying_fields:
    inspect_job__storage_config__big_query_options__identifying_fields
    list ->
  ?included_fields:
    inspect_job__storage_config__big_query_options__included_fields
    list ->
  table_reference:
    inspect_job__storage_config__big_query_options__table_reference
    list ->
  unit ->
  inspect_job__storage_config__big_query_options

type inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set

val inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set :
  ?exclude_regex:string prop list ->
  ?include_regex:string prop list ->
  bucket_name:string prop ->
  unit ->
  inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set

type inspect_job__storage_config__cloud_storage_options__file_set

val inspect_job__storage_config__cloud_storage_options__file_set :
  ?url:string prop ->
  ?regex_file_set:
    inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set
    list ->
  unit ->
  inspect_job__storage_config__cloud_storage_options__file_set

type inspect_job__storage_config__cloud_storage_options

val inspect_job__storage_config__cloud_storage_options :
  ?bytes_limit_per_file:float prop ->
  ?bytes_limit_per_file_percent:float prop ->
  ?file_types:string prop list ->
  ?files_limit_percent:float prop ->
  ?sample_method:string prop ->
  file_set:
    inspect_job__storage_config__cloud_storage_options__file_set list ->
  unit ->
  inspect_job__storage_config__cloud_storage_options

type inspect_job__storage_config__datastore_options__kind

val inspect_job__storage_config__datastore_options__kind :
  name:string prop ->
  unit ->
  inspect_job__storage_config__datastore_options__kind

type inspect_job__storage_config__datastore_options__partition_id

val inspect_job__storage_config__datastore_options__partition_id :
  ?namespace_id:string prop ->
  project_id:string prop ->
  unit ->
  inspect_job__storage_config__datastore_options__partition_id

type inspect_job__storage_config__datastore_options

val inspect_job__storage_config__datastore_options :
  kind:inspect_job__storage_config__datastore_options__kind list ->
  partition_id:
    inspect_job__storage_config__datastore_options__partition_id list ->
  unit ->
  inspect_job__storage_config__datastore_options

type inspect_job__storage_config__hybrid_options__table_options__identifying_fields

val inspect_job__storage_config__hybrid_options__table_options__identifying_fields :
  name:string prop ->
  unit ->
  inspect_job__storage_config__hybrid_options__table_options__identifying_fields

type inspect_job__storage_config__hybrid_options__table_options

val inspect_job__storage_config__hybrid_options__table_options :
  ?identifying_fields:
    inspect_job__storage_config__hybrid_options__table_options__identifying_fields
    list ->
  unit ->
  inspect_job__storage_config__hybrid_options__table_options

type inspect_job__storage_config__hybrid_options

val inspect_job__storage_config__hybrid_options :
  ?description:string prop ->
  ?labels:(string * string prop) list ->
  ?required_finding_label_keys:string prop list ->
  ?table_options:
    inspect_job__storage_config__hybrid_options__table_options list ->
  unit ->
  inspect_job__storage_config__hybrid_options

type inspect_job__storage_config__timespan_config__timestamp_field

val inspect_job__storage_config__timespan_config__timestamp_field :
  name:string prop ->
  unit ->
  inspect_job__storage_config__timespan_config__timestamp_field

type inspect_job__storage_config__timespan_config

val inspect_job__storage_config__timespan_config :
  ?enable_auto_population_of_timespan_config:bool prop ->
  ?end_time:string prop ->
  ?start_time:string prop ->
  ?timestamp_field:
    inspect_job__storage_config__timespan_config__timestamp_field
    list ->
  unit ->
  inspect_job__storage_config__timespan_config

type inspect_job__storage_config

val inspect_job__storage_config :
  ?big_query_options:
    inspect_job__storage_config__big_query_options list ->
  ?cloud_storage_options:
    inspect_job__storage_config__cloud_storage_options list ->
  ?datastore_options:
    inspect_job__storage_config__datastore_options list ->
  ?hybrid_options:inspect_job__storage_config__hybrid_options list ->
  ?timespan_config:inspect_job__storage_config__timespan_config list ->
  unit ->
  inspect_job__storage_config

type inspect_job

val inspect_job :
  ?inspect_template_name:string prop ->
  ?actions:inspect_job__actions list ->
  ?inspect_config:inspect_job__inspect_config list ->
  storage_config:inspect_job__storage_config list ->
  unit ->
  inspect_job

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type triggers__manual

val triggers__manual : unit -> triggers__manual

type triggers__schedule

val triggers__schedule :
  ?recurrence_period_duration:string prop ->
  unit ->
  triggers__schedule

type triggers

val triggers :
  ?manual:triggers__manual list ->
  ?schedule:triggers__schedule list ->
  unit ->
  triggers

type google_data_loss_prevention_job_trigger

val google_data_loss_prevention_job_trigger :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?status:string prop ->
  ?trigger_id:string prop ->
  ?inspect_job:inspect_job list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  triggers:triggers list ->
  unit ->
  google_data_loss_prevention_job_trigger

val yojson_of_google_data_loss_prevention_job_trigger :
  google_data_loss_prevention_job_trigger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  last_run_time : string prop;
  name : string prop;
  parent : string prop;
  status : string prop;
  trigger_id : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?status:string prop ->
  ?trigger_id:string prop ->
  ?inspect_job:inspect_job list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  triggers:triggers list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?status:string prop ->
  ?trigger_id:string prop ->
  ?inspect_job:inspect_job list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  triggers:triggers list ->
  string ->
  t Tf_core.resource
