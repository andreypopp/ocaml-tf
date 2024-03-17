(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__dictionary__cloud_storage_path = {
  path : string;
      (** A url representing a file or path (no wildcards) in Cloud Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt' *)
}
[@@deriving yojson_of]
(** Newline-delimited file of words in Cloud Storage. Only a single file is accepted. *)

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__dictionary__word_list = {
  words : string list;
      (** Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits. *)
}
[@@deriving yojson_of]
(** List of words or phrases to search for. *)

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__dictionary = {
  cloud_storage_path :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__dictionary__cloud_storage_path
    list;
  word_list :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__dictionary__word_list
    list;
}
[@@deriving yojson_of]
(** Dictionary which defines the rule. *)

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__info_type__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__info_type = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
infoTypes and that infoType is specified in 'info_types' field. Specifying the latter adds findings to the
one detected by the system. If built-in info type is not specified in 'info_types' list then the name is
treated as a custom info type. *)

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. *)
  pattern : string;
      (** Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression which defines the rule. *)

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__stored_type = {
  name : string;
      (** Resource name of the requested StoredInfoType, for example 'organizations/433245324/storedInfoTypes/432452342'
or 'projects/project-id/storedInfoTypes/432452342'. *)
}
[@@deriving yojson_of]
(** A reference to a StoredInfoType to use with scanning. *)

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__surrogate_type =
  unit
[@@deriving yojson_of]

type google_data_loss_prevention_inspect_template__inspect_config__custom_info_types = {
  exclusion_type : string option; [@option]
      (** If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching. Possible values: [EXCLUSION_TYPE_EXCLUDE] *)
  likelihood : string option; [@option]
      (** Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
specified by the rule. Default value: VERY_LIKELY Possible values: [VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY] *)
  dictionary :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__dictionary
    list;
  info_type :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__info_type
    list;
  regex :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__regex
    list;
  sensitivity_score :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__sensitivity_score
    list;
  stored_type :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__stored_type
    list;
  surrogate_type :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types__surrogate_type
    list;
}
[@@deriving yojson_of]
(** Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more. *)

type google_data_loss_prevention_inspect_template__inspect_config__info_types__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_inspect_template__inspect_config__info_types = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version of the information type to use. By default, the version is set to stable *)
  sensitivity_score :
    google_data_loss_prevention_inspect_template__inspect_config__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list
or listed at https://cloud.google.com/dlp/docs/infotypes-reference.

When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run.
By default this may be all types, but may change over time as detectors are updated. *)

type google_data_loss_prevention_inspect_template__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_inspect_template__inspect_config__limits__max_findings_per_info_type__info_type = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_inspect_template__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
specified in another InfoTypeLimit. *)

type google_data_loss_prevention_inspect_template__inspect_config__limits__max_findings_per_info_type = {
  max_findings : float;
      (** Max findings limit for the given infoType. *)
  info_type :
    google_data_loss_prevention_inspect_template__inspect_config__limits__max_findings_per_info_type__info_type
    list;
}
[@@deriving yojson_of]
(** Configuration of findings limit given for specified infoTypes. *)

type google_data_loss_prevention_inspect_template__inspect_config__limits = {
  max_findings_per_item : float;
      (** Max number of findings that will be returned for each item scanned. The maximum returned is 2000. *)
  max_findings_per_request : float;
      (** Max number of findings that will be returned per request/job. The maximum returned is 2000. *)
  max_findings_per_info_type :
    google_data_loss_prevention_inspect_template__inspect_config__limits__max_findings_per_info_type
    list;
}
[@@deriving yojson_of]
(** Configuration to control the number of findings returned. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__info_types__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__info_types = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** List of infoTypes this rule set is applied to. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path = {
  path : string;
      (** A url representing a file or path (no wildcards) in Cloud Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt' *)
}
[@@deriving yojson_of]
(** Newline-delimited file of words in Cloud Storage. Only a single file is accepted. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list = {
  words : string list;
      (** Words or phrases defining the dictionary. The dictionary must contain at least one
phrase and every phrase must contain at least 2 characters that are letters or digits. *)
}
[@@deriving yojson_of]
(** List of words or phrases to search for. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__dictionary = {
  cloud_storage_path :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    list;
  word_list :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    list;
}
[@@deriving yojson_of]
(** Dictionary which defines the rule. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified,
the entire match is returned. No more than 3 may be included. *)
  pattern : string;
      (** Pattern defining the regular expression. Its syntax
(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression pattern defining what qualifies as a hotword. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity = {
  window_after : float option; [@option]
      (** Number of characters after the finding to consider. *)
  window_before : float option; [@option]
      (** Number of characters before the finding to consider. *)
}
[@@deriving yojson_of]
(** Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
used to match substrings of the finding itself. For example, the certainty of a phone number regex
'(\d{3}) \d{3}-\d{4}' could be adjusted upwards if the area code is known to be the local area code of a company
office using the hotword regex '(xxx)', where 'xxx' is the area code in question. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword = {
  hotword_regex :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    list;
  proximity :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    list;
}
[@@deriving yojson_of]
(** Drop if the hotword rule is contained in the proximate context.
For tabular data, the context includes the column name. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score = {
  score : string;
      (** The sensitivity score applied to the resource. Possible values: [SENSITIVITY_LOW, SENSITIVITY_MODERATE, SENSITIVITY_HIGH] *)
}
[@@deriving yojson_of]
(** Optional custom sensitivity for this InfoType. This only applies to data profiling. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types = {
  name : string;
      (** Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. *)
  version : string option; [@option]
      (** Version name for this InfoType. *)
  sensitivity_score :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    list;
}
[@@deriving yojson_of]
(** If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types = {
  info_types :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    list;
}
[@@deriving yojson_of]
(** Set of infoTypes for which findings would affect this rule. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. *)
  pattern : string;
      (** Pattern defining the regular expression.
Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression which defines the rule. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule = {
  matching_type : string;
      (** How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType Possible values: [MATCHING_TYPE_FULL_MATCH, MATCHING_TYPE_PARTIAL_MATCH, MATCHING_TYPE_INVERSE_MATCH] *)
  dictionary :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__dictionary
    list;
  exclude_by_hotword :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    list;
  exclude_info_types :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    list;
  regex :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule__regex
    list;
}
[@@deriving yojson_of]
(** The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__hotword_rule__hotword_regex = {
  group_indexes : float list option; [@option]
      (** The index of the submatch to extract as findings. When not specified,
the entire match is returned. No more than 3 may be included. *)
  pattern : string;
      (** Pattern defining the regular expression. Its syntax
(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub. *)
}
[@@deriving yojson_of]
(** Regular expression pattern defining what qualifies as a hotword. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment = {
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

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__hotword_rule__proximity = {
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

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__hotword_rule = {
  hotword_regex :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__hotword_rule__hotword_regex
    list;
  likelihood_adjustment :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    list;
  proximity :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__hotword_rule__proximity
    list;
}
[@@deriving yojson_of]
(** Hotword-based detection rule. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules = {
  exclusion_rule :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__exclusion_rule
    list;
  hotword_rule :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules__hotword_rule
    list;
}
[@@deriving yojson_of]
(** Set of rules to be applied to infoTypes. The rules are applied in order. *)

type google_data_loss_prevention_inspect_template__inspect_config__rule_set = {
  info_types :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__info_types
    list;
  rules :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set__rules
    list;
}
[@@deriving yojson_of]
(** Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
other rules are executed in the order they are specified for each info type. *)

type google_data_loss_prevention_inspect_template__inspect_config = {
  content_options : string list option; [@option]
      (** List of options defining data content to scan. If empty, text, images, and other content will be included. Possible values: [CONTENT_TEXT, CONTENT_IMAGE] *)
  exclude_info_types : bool option; [@option]
      (** When true, excludes type information of the findings. *)
  include_quote : bool option; [@option]
      (** When true, a contextual quote from the data that triggered a finding is included in the response. *)
  min_likelihood : string option; [@option]
      (** Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info Default value: POSSIBLE Possible values: [VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY] *)
  custom_info_types :
    google_data_loss_prevention_inspect_template__inspect_config__custom_info_types
    list;
  info_types :
    google_data_loss_prevention_inspect_template__inspect_config__info_types
    list;
  limits :
    google_data_loss_prevention_inspect_template__inspect_config__limits
    list;
  rule_set :
    google_data_loss_prevention_inspect_template__inspect_config__rule_set
    list;
}
[@@deriving yojson_of]
(** The core content of the template. *)

type google_data_loss_prevention_inspect_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_loss_prevention_inspect_template__timeouts *)

type google_data_loss_prevention_inspect_template = {
  description : string option; [@option]
      (** A description of the inspect template. *)
  display_name : string option; [@option]
      (** User set display name of the inspect template. *)
  parent : string;
      (** The parent of the inspect template in any of the following formats:

* 'projects/{{project}}'
* 'projects/{{project}}/locations/{{location}}'
* 'organizations/{{organization_id}}'
* 'organizations/{{organization_id}}/locations/{{location}}' *)
  inspect_config :
    google_data_loss_prevention_inspect_template__inspect_config list;
  timeouts :
    google_data_loss_prevention_inspect_template__timeouts option;
}
[@@deriving yojson_of]
(** google_data_loss_prevention_inspect_template *)

let google_data_loss_prevention_inspect_template ?description
    ?display_name ?timeouts ~parent ~inspect_config __resource_id =
  let __resource_type =
    "google_data_loss_prevention_inspect_template"
  in
  let __resource =
    { description; display_name; parent; inspect_config; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_loss_prevention_inspect_template
       __resource);
  ()
