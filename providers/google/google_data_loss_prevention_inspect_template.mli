(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type inspect_config__custom_info_types__dictionary__cloud_storage_path

val inspect_config__custom_info_types__dictionary__cloud_storage_path :
  path:string prop ->
  unit ->
  inspect_config__custom_info_types__dictionary__cloud_storage_path

type inspect_config__custom_info_types__dictionary__word_list

val inspect_config__custom_info_types__dictionary__word_list :
  words:string prop list ->
  unit ->
  inspect_config__custom_info_types__dictionary__word_list

type inspect_config__custom_info_types__dictionary

val inspect_config__custom_info_types__dictionary :
  cloud_storage_path:
    inspect_config__custom_info_types__dictionary__cloud_storage_path
    list ->
  word_list:
    inspect_config__custom_info_types__dictionary__word_list list ->
  unit ->
  inspect_config__custom_info_types__dictionary

type inspect_config__custom_info_types__info_type__sensitivity_score

val inspect_config__custom_info_types__info_type__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_config__custom_info_types__info_type__sensitivity_score

type inspect_config__custom_info_types__info_type

val inspect_config__custom_info_types__info_type :
  ?version:string prop ->
  name:string prop ->
  sensitivity_score:
    inspect_config__custom_info_types__info_type__sensitivity_score
    list ->
  unit ->
  inspect_config__custom_info_types__info_type

type inspect_config__custom_info_types__regex

val inspect_config__custom_info_types__regex :
  ?group_indexes:float prop list ->
  pattern:string prop ->
  unit ->
  inspect_config__custom_info_types__regex

type inspect_config__custom_info_types__sensitivity_score

val inspect_config__custom_info_types__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_config__custom_info_types__sensitivity_score

type inspect_config__custom_info_types__stored_type

val inspect_config__custom_info_types__stored_type :
  name:string prop ->
  unit ->
  inspect_config__custom_info_types__stored_type

type inspect_config__custom_info_types__surrogate_type

val inspect_config__custom_info_types__surrogate_type :
  unit -> inspect_config__custom_info_types__surrogate_type

type inspect_config__custom_info_types

val inspect_config__custom_info_types :
  ?exclusion_type:string prop ->
  ?likelihood:string prop ->
  dictionary:inspect_config__custom_info_types__dictionary list ->
  info_type:inspect_config__custom_info_types__info_type list ->
  regex:inspect_config__custom_info_types__regex list ->
  sensitivity_score:
    inspect_config__custom_info_types__sensitivity_score list ->
  stored_type:inspect_config__custom_info_types__stored_type list ->
  surrogate_type:
    inspect_config__custom_info_types__surrogate_type list ->
  unit ->
  inspect_config__custom_info_types

type inspect_config__info_types__sensitivity_score

val inspect_config__info_types__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_config__info_types__sensitivity_score

type inspect_config__info_types

val inspect_config__info_types :
  ?version:string prop ->
  name:string prop ->
  sensitivity_score:
    inspect_config__info_types__sensitivity_score list ->
  unit ->
  inspect_config__info_types

type inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score

val inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score

type inspect_config__limits__max_findings_per_info_type__info_type

val inspect_config__limits__max_findings_per_info_type__info_type :
  ?version:string prop ->
  name:string prop ->
  sensitivity_score:
    inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    list ->
  unit ->
  inspect_config__limits__max_findings_per_info_type__info_type

type inspect_config__limits__max_findings_per_info_type

val inspect_config__limits__max_findings_per_info_type :
  max_findings:float prop ->
  info_type:
    inspect_config__limits__max_findings_per_info_type__info_type
    list ->
  unit ->
  inspect_config__limits__max_findings_per_info_type

type inspect_config__limits

val inspect_config__limits :
  max_findings_per_item:float prop ->
  max_findings_per_request:float prop ->
  max_findings_per_info_type:
    inspect_config__limits__max_findings_per_info_type list ->
  unit ->
  inspect_config__limits

type inspect_config__rule_set__info_types__sensitivity_score

val inspect_config__rule_set__info_types__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_config__rule_set__info_types__sensitivity_score

type inspect_config__rule_set__info_types

val inspect_config__rule_set__info_types :
  ?version:string prop ->
  name:string prop ->
  sensitivity_score:
    inspect_config__rule_set__info_types__sensitivity_score list ->
  unit ->
  inspect_config__rule_set__info_types

type inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path

val inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path :
  path:string prop ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path

type inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list

val inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list :
  words:string prop list ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list

type inspect_config__rule_set__rules__exclusion_rule__dictionary

val inspect_config__rule_set__rules__exclusion_rule__dictionary :
  cloud_storage_path:
    inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    list ->
  word_list:
    inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    list ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__dictionary

type inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex

val inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex :
  ?group_indexes:float prop list ->
  pattern:string prop ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex

type inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity

val inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity :
  ?window_after:float prop ->
  ?window_before:float prop ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity

type inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword

val inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword :
  hotword_regex:
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    list ->
  proximity:
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    list ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword

type inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score

val inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score :
  score:string prop ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score

type inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types

val inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types :
  ?version:string prop ->
  name:string prop ->
  sensitivity_score:
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    list ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types

type inspect_config__rule_set__rules__exclusion_rule__exclude_info_types

val inspect_config__rule_set__rules__exclusion_rule__exclude_info_types :
  info_types:
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    list ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__exclude_info_types

type inspect_config__rule_set__rules__exclusion_rule__regex

val inspect_config__rule_set__rules__exclusion_rule__regex :
  ?group_indexes:float prop list ->
  pattern:string prop ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule__regex

type inspect_config__rule_set__rules__exclusion_rule

val inspect_config__rule_set__rules__exclusion_rule :
  matching_type:string prop ->
  dictionary:
    inspect_config__rule_set__rules__exclusion_rule__dictionary list ->
  exclude_by_hotword:
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    list ->
  exclude_info_types:
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    list ->
  regex:inspect_config__rule_set__rules__exclusion_rule__regex list ->
  unit ->
  inspect_config__rule_set__rules__exclusion_rule

type inspect_config__rule_set__rules__hotword_rule__hotword_regex

val inspect_config__rule_set__rules__hotword_rule__hotword_regex :
  ?group_indexes:float prop list ->
  pattern:string prop ->
  unit ->
  inspect_config__rule_set__rules__hotword_rule__hotword_regex

type inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment

val inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment :
  ?fixed_likelihood:string prop ->
  ?relative_likelihood:float prop ->
  unit ->
  inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment

type inspect_config__rule_set__rules__hotword_rule__proximity

val inspect_config__rule_set__rules__hotword_rule__proximity :
  ?window_after:float prop ->
  ?window_before:float prop ->
  unit ->
  inspect_config__rule_set__rules__hotword_rule__proximity

type inspect_config__rule_set__rules__hotword_rule

val inspect_config__rule_set__rules__hotword_rule :
  hotword_regex:
    inspect_config__rule_set__rules__hotword_rule__hotword_regex list ->
  likelihood_adjustment:
    inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    list ->
  proximity:
    inspect_config__rule_set__rules__hotword_rule__proximity list ->
  unit ->
  inspect_config__rule_set__rules__hotword_rule

type inspect_config__rule_set__rules

val inspect_config__rule_set__rules :
  exclusion_rule:inspect_config__rule_set__rules__exclusion_rule list ->
  hotword_rule:inspect_config__rule_set__rules__hotword_rule list ->
  unit ->
  inspect_config__rule_set__rules

type inspect_config__rule_set

val inspect_config__rule_set :
  info_types:inspect_config__rule_set__info_types list ->
  rules:inspect_config__rule_set__rules list ->
  unit ->
  inspect_config__rule_set

type inspect_config

val inspect_config :
  ?content_options:string prop list ->
  ?exclude_info_types:bool prop ->
  ?include_quote:bool prop ->
  ?min_likelihood:string prop ->
  custom_info_types:inspect_config__custom_info_types list ->
  info_types:inspect_config__info_types list ->
  limits:inspect_config__limits list ->
  rule_set:inspect_config__rule_set list ->
  unit ->
  inspect_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_data_loss_prevention_inspect_template

val google_data_loss_prevention_inspect_template :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?template_id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  inspect_config:inspect_config list ->
  unit ->
  google_data_loss_prevention_inspect_template

val yojson_of_google_data_loss_prevention_inspect_template :
  google_data_loss_prevention_inspect_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  template_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?template_id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  inspect_config:inspect_config list ->
  string ->
  t
