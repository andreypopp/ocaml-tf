(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_loss_prevention_job_trigger__inspect_job__actions__deidentify__transformation_config = {
  deidentify_template : string option; [@option]
      (** If this template is specified, it will serve as the default de-identify template. *)
  image_redact_template : string option; [@option]
      (** If this template is specified, it will serve as the de-identify template for images. *)
  structured_deidentify_template : string option; [@option]
      (** If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables. *)
}
[@@deriving yojson_of]
(** User specified deidentify templates and configs for structured, unstructured, and image files. *)

type google_data_loss_prevention_job_trigger__inspect_job__actions__deidentify__transformation_details_storage_config__table = {
  dataset_id : string;
      (** The ID of the dataset containing this table. *)
  project_id : string;
      (** The ID of the project containing this table. *)
  table_id : string option; [@option]
      (** The ID of the table. The ID must contain only letters (a-z,
A-Z), numbers (0-9), or underscores (_). The maximum length
is 1,024 characters. *)
}
[@@deriving yojson_of]
(** The BigQuery table in which to store the output. *)

type google_data_loss_prevention_job_trigger__inspect_job__actions__deidentify__transformation_details_storage_config = {
  table :
    google_data_loss_prevention_job_trigger__inspect_job__actions__deidentify__transformation_details_storage_config__table
    list;
}
[@@deriving yojson_of]
(** Config for storing transformation details. *)

type google_data_loss_prevention_job_trigger__inspect_job__actions__deidentify = {
  cloud_storage_output : string;
      (** User settable Cloud Storage bucket and folders to store de-identified files.

This field must be set for cloud storage deidentification.

The output Cloud Storage bucket must be different from the input bucket.

De-identified files will overwrite files in the output path.

Form of: gs://bucket/folder/ or gs://bucket *)
  file_types_to_transform : string list option; [@option]
      (** List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed.

If empty, all supported files will be transformed. Supported types may be automatically added over time.

If a file type is set in this field that isn't supported by the Deidentify action then the job will fail and will not be successfully created/started. Possible values: [IMAGE, TEXT_FILE, CSV, TSV] *)
  transformation_config :
    google_data_loss_prevention_job_trigger__inspect_job__actions__deidentify__transformation_config
    list;
  transformation_details_storage_config :
    google_data_loss_prevention_job_trigger__inspect_job__actions__deidentify__transformation_details_storage_config
    list;
}
[@@deriving yojson_of]
(** Create a de-identified copy of the requested table or files. *)

type google_data_loss_prevention_job_trigger__inspect_job__actions__job_notification_emails =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_job_trigger__inspect_job__actions__pub_sub = {
  topic : string;
      (** Cloud Pub/Sub topic to send notifications to. *)
}
[@@deriving yojson_of]
(** Publish a message into a given Pub/Sub topic when the job completes. *)

type google_data_loss_prevention_job_trigger__inspect_job__actions__publish_findings_to_cloud_data_catalog =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_job_trigger__inspect_job__actions__publish_summary_to_cscc =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_job_trigger__inspect_job__actions__publish_to_stackdriver =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_job_trigger__inspect_job__actions__save_findings__output_config__table = {
  dataset_id : string;  (** Dataset ID of the table. *)
  project_id : string;
      (** The Google Cloud Platform project ID of the project containing the table. *)
  table_id : string option; [@option]
      (** Name of the table. If is not set a new one will be generated for you with the following format:
'dlp_googleapis_yyyy_mm_dd_[dlp_job_id]'. Pacific timezone will be used for generating the date details. *)
}
[@@deriving yojson_of]
(** Information on the location of the target BigQuery Table. *)

type google_data_loss_prevention_job_trigger__inspect_job__actions__save_findings__output_config = {
  output_schema : string option; [@option]
      (** Schema used for writing the findings for Inspect jobs. This field is only used for
Inspect and must be unspecified for Risk jobs. Columns are derived from the Finding
object. If appending to an existing table, any columns from the predefined schema
that are missing will be added. No columns in the existing table will be deleted.

If unspecified, then all available columns will be used for a new table or an (existing)
table with no schema, and no changes will be made to an existing table that has a schema.
Only for use with external storage. Possible values: [BASIC_COLUMNS, GCS_COLUMNS, DATASTORE_COLUMNS, BIG_QUERY_COLUMNS, ALL_COLUMNS] *)
  table :
    google_data_loss_prevention_job_trigger__inspect_job__actions__save_findings__output_config__table
    list;
}
[@@deriving yojson_of]
(** Information on where to store output *)

type google_data_loss_prevention_job_trigger__inspect_job__actions__save_findings = {
  output_config :
    google_data_loss_prevention_job_trigger__inspect_job__actions__save_findings__output_config
    list;
}
[@@deriving yojson_of]
(** If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk *)

type google_data_loss_prevention_job_trigger__inspect_job__actions = {
  deidentify :
    google_data_loss_prevention_job_trigger__inspect_job__actions__deidentify
    list;
  job_notification_emails :
    google_data_loss_prevention_job_trigger__inspect_job__actions__job_notification_emails
    list;
  pub_sub :
    google_data_loss_prevention_job_trigger__inspect_job__actions__pub_sub
    list;
  publish_findings_to_cloud_data_catalog :
    google_data_loss_prevention_job_trigger__inspect_job__actions__publish_findings_to_cloud_data_catalog
    list;
  publish_summary_to_cscc :
    google_data_loss_prevention_job_trigger__inspect_job__actions__publish_summary_to_cscc
    list;
  publish_to_stackdriver :
    google_data_loss_prevention_job_trigger__inspect_job__actions__publish_to_stackdriver
    list;
  save_findings :
    google_data_loss_prevention_job_trigger__inspect_job__actions__save_findings
    list;
}
[@@deriving yojson_of]
(** Configuration block for the actions to execute on the completion of a job. Can be specified multiple times, but only one for each type. Each action block supports fields documented below. This argument is processed in [attribute-as-blocks mode](https://www.terraform.io/docs/configuration/attr-as-blocks.html). *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path = {
  path : string;
      (** A url representing a file or path (no wildcards) in Cloud Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt' *)
}
[@@deriving yojson_of]
(** Newline-delimited file of words in Cloud Storage. Only a single file is accepted. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__dictionary__word_list = {
  words : string list;
      (** Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits. *)
}
[@@deriving yojson_of]
(** List of words or phrases to search for. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__dictionary = {
  cloud_storage_path :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path
    list;
  word_list :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__dictionary__word_list
    list;
}
[@@deriving yojson_of]
(** Dictionary which defines the rule. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__info_type = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version of the information type to use. By default, the version is set to stable. *)
  sensitivity_score :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
infoTypes and that infoType is specified in 'info_types' field. Specifying the latter adds findings to the
one detected by the system. If built-in info type is not specified in 'info_types' list then the name is
treated as a custom info type. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. *)
  pattern : string;
      (** Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression which defines the rule. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__stored_type = {
  create_time : string;
      (** The creation timestamp of an inspectTemplate. Set by the server. *)
  name : string;
      (** Resource name of the requested StoredInfoType, for example 'organizations/433245324/storedInfoTypes/432452342'
or 'projects/project-id/storedInfoTypes/432452342'. *)
}
[@@deriving yojson_of]
(** A reference to a StoredInfoType to use with scanning. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__surrogate_type =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types = {
  exclusion_type : string option; [@option]
      (** If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching. Possible values: [EXCLUSION_TYPE_EXCLUDE] *)
  likelihood : string option; [@option]
      (** Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
specified by the rule. Default value: VERY_LIKELY Possible values: [VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY] *)
  dictionary :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__dictionary
    list;
  info_type :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__info_type
    list;
  regex :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__regex
    list;
  sensitivity_score :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__sensitivity_score
    list;
  stored_type :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__stored_type
    list;
  surrogate_type :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types__surrogate_type
    list;
}
[@@deriving yojson_of]
(** Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__info_types__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__info_types = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version of the information type to use. By default, the version is set to stable *)
  sensitivity_score :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list
or listed at https://cloud.google.com/dlp/docs/infotypes-reference.

When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run.
By default this may be all types, but may change over time as detectors are updated. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__limits__max_findings_per_info_type__info_type = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version of the information type to use. By default, the version is set to stable *)
  sensitivity_score :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
specified in another InfoTypeLimit. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__limits__max_findings_per_info_type = {
  max_findings : float option; [@option]
      (** Max findings limit for the given infoType. *)
  info_type :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__limits__max_findings_per_info_type__info_type
    list;
}
[@@deriving yojson_of]
(** Configuration of findings limit given for specified infoTypes. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__limits = {
  max_findings_per_item : float option; [@option]
      (** Max number of findings that will be returned for each item scanned. The maximum returned is 2000. *)
  max_findings_per_request : float option; [@option]
      (** Max number of findings that will be returned per request/job. The maximum returned is 2000. *)
  max_findings_per_info_type :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__limits__max_findings_per_info_type
    list;
}
[@@deriving yojson_of]
(** Configuration to control the number of findings returned. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__info_types__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__info_types = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version of the information type to use. By default, the version is set to stable. *)
  sensitivity_score :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** List of infoTypes this rule set is applied to. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path = {
  path : string;
      (** A url representing a file or path (no wildcards) in Cloud Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt' *)
}
[@@deriving yojson_of]
(** Newline-delimited file of words in Cloud Storage. Only a single file is accepted. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list = {
  words : string list;
      (** Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits. *)
}
[@@deriving yojson_of]
(** List of words or phrases to search for. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary = {
  cloud_storage_path :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    list;
  word_list :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    list;
}
[@@deriving yojson_of]
(** Dictionary which defines the rule. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified,
the entire match is returned. No more than 3 may be included. *)
  pattern : string option; [@option]
      (** Pattern defining the regular expression. Its syntax
(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression pattern defining what qualifies as a hotword. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity = {
  window_after : float option; [@option]
      (** Number of characters after the finding to consider. Either this or window_before must be specified *)
  window_before : float option; [@option]
      (** Number of characters before the finding to consider. Either this or window_after must be specified *)
}
[@@deriving yojson_of]
(** Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
used to match substrings of the finding itself. For example, the certainty of a phone number regex
'(\d{3}) \d{3}-\d{4}' could be adjusted upwards if the area code is known to be the local area code of a company
office using the hotword regex '(xxx)', where 'xxx' is the area code in question. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword = {
  hotword_regex :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    list;
  proximity :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    list;
}
[@@deriving yojson_of]
(** Drop if the hotword rule is contained in the proximate context. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version of the information type to use. By default, the version is set to stable. *)
  sensitivity_score :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types = {
  info_types :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    list;
}
[@@deriving yojson_of]
(** Set of infoTypes for which findings would affect this rule. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. *)
  pattern : string;
      (** Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression which defines the rule. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule = {
  matching_type : string;
      (** How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType Possible values: [MATCHING_TYPE_FULL_MATCH, MATCHING_TYPE_PARTIAL_MATCH, MATCHING_TYPE_INVERSE_MATCH] *)
  dictionary :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary
    list;
  exclude_by_hotword :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    list;
  exclude_info_types :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    list;
  regex :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex
    list;
}
[@@deriving yojson_of]
(** The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified,
the entire match is returned. No more than 3 may be included. *)
  pattern : string option; [@option]
      (** Pattern defining the regular expression. Its syntax
(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression pattern defining what qualifies as a hotword. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment = {
  fixed_likelihood : string option; [@option]
      (** Set the likelihood of a finding to a fixed value. Either this or relative_likelihood can be set. Possible values: [VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY] *)
  relative_likelihood : float option; [@option]
      (** Increase or decrease the likelihood by the specified number of levels. For example,
if a finding would be POSSIBLE without the detection rule and relativeLikelihood is 1,
then it is upgraded to LIKELY, while a value of -1 would downgrade it to UNLIKELY.
Likelihood may never drop below VERY_UNLIKELY or exceed VERY_LIKELY, so applying an
adjustment of 1 followed by an adjustment of -1 when base likelihood is VERY_LIKELY
will result in a final likelihood of LIKELY. Either this or fixed_likelihood can be set. *)
}
[@@deriving yojson_of]
(** Likelihood adjustment to apply to all matching findings. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity = {
  window_after : float option; [@option]
      (** Number of characters after the finding to consider. Either this or window_before must be specified *)
  window_before : float option; [@option]
      (** Number of characters before the finding to consider. Either this or window_after must be specified *)
}
[@@deriving yojson_of]
(** Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
used to match substrings of the finding itself. For example, the certainty of a phone number regex
'(\d{3}) \d{3}-\d{4}' could be adjusted upwards if the area code is known to be the local area code of a company
office using the hotword regex '(xxx)', where 'xxx' is the area code in question. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__hotword_rule = {
  hotword_regex :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex
    list;
  likelihood_adjustment :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    list;
  proximity :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity
    list;
}
[@@deriving yojson_of]
(** Hotword-based detection rule. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules = {
  exclusion_rule :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__exclusion_rule
    list;
  hotword_rule :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules__hotword_rule
    list;
}
[@@deriving yojson_of]
(** Set of rules to be applied to infoTypes. The rules are applied in order. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set = {
  info_types :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__info_types
    list;
  rules :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set__rules
    list;
}
[@@deriving yojson_of]
(** Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
other rules are executed in the order they are specified for each info type. *)

type google_data_loss_prevention_job_trigger__inspect_job__inspect_config = {
  exclude_info_types : bool option; [@option]
      (** When true, excludes type information of the findings. *)
  include_quote : bool option; [@option]
      (** When true, a contextual quote from the data that triggered a finding is included in the response. *)
  min_likelihood : string option; [@option]
      (** Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info Default value: POSSIBLE Possible values: [VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY] *)
  custom_info_types :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__custom_info_types
    list;
  info_types :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__info_types
    list;
  limits :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__limits
    list;
  rule_set :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config__rule_set
    list;
}
[@@deriving yojson_of]
(** The core content of the template. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options__excluded_fields = {
  name : string;
      (** Name describing the field excluded from scanning. *)
}
[@@deriving yojson_of]
(** References to fields excluded from scanning.
This allows you to skip inspection of entire columns which you know have no findings. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options__identifying_fields = {
  name : string;
      (** Name of a BigQuery field to be returned with the findings. *)
}
[@@deriving yojson_of]
(** Specifies the BigQuery fields that will be returned with findings.
If not specified, no identifying fields will be returned for findings. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options__included_fields = {
  name : string;
      (** Name describing the field to which scanning is limited. *)
}
[@@deriving yojson_of]
(** Limit scanning only to these fields. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options__table_reference = {
  dataset_id : string;  (** The dataset ID of the table. *)
  project_id : string;
      (** The Google Cloud Platform project ID of the project containing the table. *)
  table_id : string;  (** The name of the table. *)
}
[@@deriving yojson_of]
(** Set of files to scan. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options = {
  rows_limit : float option; [@option]
      (** Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted.
If not set, or if set to 0, all rows will be scanned. Only one of rowsLimit and rowsLimitPercent can be
specified. Cannot be used in conjunction with TimespanConfig. *)
  rows_limit_percent : float option; [@option]
      (** Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down.
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of
rowsLimit and rowsLimitPercent can be specified. Cannot be used in conjunction with TimespanConfig. *)
  sample_method : string option; [@option]
      (** How to sample rows if not all rows are scanned. Meaningful only when used in conjunction with either
rowsLimit or rowsLimitPercent. If not specified, rows are scanned in the order BigQuery reads them. Default value: TOP Possible values: [TOP, RANDOM_START] *)
  excluded_fields :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options__excluded_fields
    list;
  identifying_fields :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options__identifying_fields
    list;
  included_fields :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options__included_fields
    list;
  table_reference :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options__table_reference
    list;
}
[@@deriving yojson_of]
(** Options defining BigQuery table and row identifiers. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set = {
  bucket_name : string;  (** The name of a Cloud Storage bucket. *)
  exclude_regex : string list option; [@option]
      (** A list of regular expressions matching file paths to exclude. All files in the bucket that match at
least one of these regular expressions will be excluded from the scan. *)
  include_regex : string list option; [@option]
      (** A list of regular expressions matching file paths to include. All files in the bucket
that match at least one of these regular expressions will be included in the set of files,
except for those that also match an item in excludeRegex. Leaving this field empty will
match all files by default (this is equivalent to including .* in the list) *)
}
[@@deriving yojson_of]
(** The regex-filtered set of files to scan. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__cloud_storage_options__file_set = {
  url : string option; [@option]
      (** The Cloud Storage url of the file(s) to scan, in the format 'gs://<bucket>/<path>'. Trailing wildcard
in the path is allowed.

If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned
non-recursively (content in sub-directories will not be scanned). This means that 'gs://mybucket/' is
equivalent to 'gs://mybucket/*', and 'gs://mybucket/directory/' is equivalent to 'gs://mybucket/directory/*'. *)
  regex_file_set :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set
    list;
}
[@@deriving yojson_of]
(** Set of files to scan. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__cloud_storage_options = {
  bytes_limit_per_file : float option; [@option]
      (** Max number of bytes to scan from a file. If a scanned file's size is bigger than this value
then the rest of the bytes are omitted. *)
  bytes_limit_per_file_percent : float option; [@option]
      (** Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down.
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. *)
  file_types : string list option; [@option]
      (** List of file type groups to include in the scan. If empty, all files are scanned and available data
format processors are applied. In addition, the binary content of the selected files is always scanned as well.
Images are scanned only as binary if the specified region does not support image inspection and no fileTypes were specified. Possible values: [BINARY_FILE, TEXT_FILE, IMAGE, WORD, PDF, AVRO, CSV, TSV, POWERPOINT, EXCEL] *)
  files_limit_percent : float option; [@option]
      (** Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down.
Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. *)
  sample_method : string option; [@option]
      (** How to sample bytes if not all bytes are scanned. Meaningful only when used in conjunction with bytesLimitPerFile.
If not specified, scanning would start from the top. Possible values: [TOP, RANDOM_START] *)
  file_set :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__cloud_storage_options__file_set
    list;
}
[@@deriving yojson_of]
(** Options defining a file or a set of files within a Google Cloud Storage bucket. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__datastore_options__kind = {
  name : string;  (** The name of the Datastore kind. *)
}
[@@deriving yojson_of]
(** A representation of a Datastore kind. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__datastore_options__partition_id = {
  namespace_id : string option; [@option]
      (** If not empty, the ID of the namespace to which the entities belong. *)
  project_id : string;
      (** The ID of the project to which the entities belong. *)
}
[@@deriving yojson_of]
(** Datastore partition ID. A partition ID identifies a grouping of entities. The grouping
is always by project and namespace, however the namespace ID may be empty. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__datastore_options = {
  kind :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__datastore_options__kind
    list;
  partition_id :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__datastore_options__partition_id
    list;
}
[@@deriving yojson_of]
(** Options defining a data set within Google Cloud Datastore. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__hybrid_options__table_options__identifying_fields = {
  name : string;  (** Name describing the field. *)
}
[@@deriving yojson_of]
(** The columns that are the primary keys for table objects included in ContentItem. A copy of this
cell's value will stored alongside alongside each finding so that the finding can be traced to
the specific row it came from. No more than 3 may be provided. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__hybrid_options__table_options = {
  identifying_fields :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__hybrid_options__table_options__identifying_fields
    list;
}
[@@deriving yojson_of]
(** If the container is a table, additional information to make findings meaningful such as the columns that are primary keys. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__hybrid_options = {
  description : string option; [@option]
      (** A short description of where the data is coming from. Will be stored once in the job. 256 max length. *)
  labels : (string * string) list option; [@option]
      (** To organize findings, these labels will be added to each finding.

Label keys must be between 1 and 63 characters long and must conform to the following regular expression: '[a-z]([-a-z0-9]*[a-z0-9])?'.

Label values must be between 0 and 63 characters long and must conform to the regular expression '([a-z]([-a-z0-9]*[a-z0-9])?)?'.

No more than 10 labels can be associated with a given finding.

Examples:
* 'environment : production'
* 'pipeline : etl' *)
  required_finding_label_keys : string list option; [@option]
      (** These are labels that each inspection request must include within their 'finding_labels' map. Request
may contain others, but any missing one of these will be rejected.

Label keys must be between 1 and 63 characters long and must conform to the following regular expression: '[a-z]([-a-z0-9]*[a-z0-9])?'.

No more than 10 keys can be required. *)
  table_options :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__hybrid_options__table_options
    list;
}
[@@deriving yojson_of]
(** Configuration to control jobs where the content being inspected is outside of Google Cloud Platform. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__timespan_config__timestamp_field = {
  name : string;
      (** Specification of the field containing the timestamp of scanned items. Used for data sources like Datastore and BigQuery.

For BigQuery: Required to filter out rows based on the given start and end times. If not specified and the table was
modified between the given start and end times, the entire table will be scanned. The valid data types of the timestamp
field are: INTEGER, DATE, TIMESTAMP, or DATETIME BigQuery column.

For Datastore. Valid data types of the timestamp field are: TIMESTAMP. Datastore entity will be scanned if the
timestamp property does not exist or its value is empty or invalid. *)
}
[@@deriving yojson_of]
(** Specification of the field containing the timestamp of scanned items. *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config__timespan_config = {
  enable_auto_population_of_timespan_config : bool option; [@option]
      (** When the job is started by a JobTrigger we will automatically figure out a valid startTime to avoid
scanning files that have not been modified since the last time the JobTrigger executed. This will
be based on the time of the execution of the last run of the JobTrigger or the timespan endTime
used in the last run of the JobTrigger. *)
  end_time : string option; [@option]
      (** Exclude files, tables, or rows newer than this value. If not set, no upper time limit is applied. *)
  start_time : string option; [@option]
      (** Exclude files, tables, or rows older than this value. If not set, no lower time limit is applied. *)
  timestamp_field :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__timespan_config__timestamp_field
    list;
}
[@@deriving yojson_of]
(** Configuration of the timespan of the items to include in scanning *)

type google_data_loss_prevention_job_trigger__inspect_job__storage_config = {
  big_query_options :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__big_query_options
    list;
  cloud_storage_options :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__cloud_storage_options
    list;
  datastore_options :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__datastore_options
    list;
  hybrid_options :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__hybrid_options
    list;
  timespan_config :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config__timespan_config
    list;
}
[@@deriving yojson_of]
(** Information on where to inspect *)

type google_data_loss_prevention_job_trigger__inspect_job = {
  inspect_template_name : string option; [@option]
      (** The name of the template to run when this job is triggered. *)
  actions :
    google_data_loss_prevention_job_trigger__inspect_job__actions
    list;
  inspect_config :
    google_data_loss_prevention_job_trigger__inspect_job__inspect_config
    list;
  storage_config :
    google_data_loss_prevention_job_trigger__inspect_job__storage_config
    list;
}
[@@deriving yojson_of]
(** Controls what and how to inspect for findings. *)

type google_data_loss_prevention_job_trigger__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_loss_prevention_job_trigger__timeouts *)

type google_data_loss_prevention_job_trigger__triggers__manual = unit
[@@deriving yojson_of]

type google_data_loss_prevention_job_trigger__triggers__schedule = {
  recurrence_period_duration : string option; [@option]
      (** With this option a job is started a regular periodic basis. For example: every day (86400 seconds).

A scheduled start time will be skipped if the previous execution has not ended when its scheduled time occurs.

This value must be set to a time duration greater than or equal to 1 day and can be no longer than 60 days.

A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Schedule for triggered jobs *)

type google_data_loss_prevention_job_trigger__triggers = {
  manual :
    google_data_loss_prevention_job_trigger__triggers__manual list;
  schedule :
    google_data_loss_prevention_job_trigger__triggers__schedule list;
}
[@@deriving yojson_of]
(** What event needs to occur for a new job to be started. *)

type google_data_loss_prevention_job_trigger = {
  description : string option; [@option]
      (** A description of the job trigger. *)
  display_name : string option; [@option]
      (** User set display name of the job trigger. *)
  id : string option; [@option]  (** id *)
  parent : string;
      (** The parent of the trigger, either in the format 'projects/{{project}}'
or 'projects/{{project}}/locations/{{location}}' *)
  status : string option; [@option]
      (** Whether the trigger is currently active. Default value: HEALTHY Possible values: [PAUSED, HEALTHY, CANCELLED] *)
  trigger_id : string option; [@option]
      (** The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
that is, it must match the regular expression: [a-zA-Z\d-_]+.
The maximum length is 100 characters. Can be empty to allow the system to generate one. *)
  inspect_job :
    google_data_loss_prevention_job_trigger__inspect_job list;
  timeouts :
    google_data_loss_prevention_job_trigger__timeouts option;
  triggers : google_data_loss_prevention_job_trigger__triggers list;
}
[@@deriving yojson_of]
(** google_data_loss_prevention_job_trigger *)

let google_data_loss_prevention_job_trigger ?description
    ?display_name ?id ?status ?trigger_id ?timeouts ~parent
    ~inspect_job ~triggers __resource_id =
  let __resource_type = "google_data_loss_prevention_job_trigger" in
  let __resource =
    {
      description;
      display_name;
      id;
      parent;
      status;
      trigger_id;
      inspect_job;
      timeouts;
      triggers;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_loss_prevention_job_trigger __resource);
  ()
