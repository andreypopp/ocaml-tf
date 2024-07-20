(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type errors__details = {
  code : float prop;  (** code *)
  details : (string * string prop) list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** details *)
  message : string prop;  (** message *)
}

type errors = {
  details : errors__details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** details *)
  timestamp : string prop;  (** timestamp *)
}

type actions__export_data__profile_table

val actions__export_data__profile_table :
  ?dataset_id:string prop ->
  ?project_id:string prop ->
  ?table_id:string prop ->
  unit ->
  actions__export_data__profile_table

type actions__export_data

val actions__export_data :
  ?profile_table:actions__export_data__profile_table list ->
  unit ->
  actions__export_data

type actions__pub_sub_notification__pubsub_condition__expressions__conditions

val actions__pub_sub_notification__pubsub_condition__expressions__conditions :
  ?minimum_risk_score:string prop ->
  ?minimum_sensitivity_score:string prop ->
  unit ->
  actions__pub_sub_notification__pubsub_condition__expressions__conditions

type actions__pub_sub_notification__pubsub_condition__expressions

val actions__pub_sub_notification__pubsub_condition__expressions :
  ?logical_operator:string prop ->
  ?conditions:
    actions__pub_sub_notification__pubsub_condition__expressions__conditions
    list ->
  unit ->
  actions__pub_sub_notification__pubsub_condition__expressions

type actions__pub_sub_notification__pubsub_condition

val actions__pub_sub_notification__pubsub_condition :
  ?expressions:
    actions__pub_sub_notification__pubsub_condition__expressions list ->
  unit ->
  actions__pub_sub_notification__pubsub_condition

type actions__pub_sub_notification

val actions__pub_sub_notification :
  ?detail_of_message:string prop ->
  ?event:string prop ->
  ?topic:string prop ->
  ?pubsub_condition:
    actions__pub_sub_notification__pubsub_condition list ->
  unit ->
  actions__pub_sub_notification

type actions

val actions :
  ?export_data:actions__export_data list ->
  ?pub_sub_notification:actions__pub_sub_notification list ->
  unit ->
  actions

type org_config__location

val org_config__location :
  ?folder_id:string prop ->
  ?organization_id:string prop ->
  unit ->
  org_config__location

type org_config

val org_config :
  ?project_id:string prop ->
  ?location:org_config__location list ->
  unit ->
  org_config

type targets__big_query_target__cadence__schema_modified_cadence

val targets__big_query_target__cadence__schema_modified_cadence :
  ?frequency:string prop ->
  ?types:string prop list ->
  unit ->
  targets__big_query_target__cadence__schema_modified_cadence

type targets__big_query_target__cadence__table_modified_cadence

val targets__big_query_target__cadence__table_modified_cadence :
  ?frequency:string prop ->
  ?types:string prop list ->
  unit ->
  targets__big_query_target__cadence__table_modified_cadence

type targets__big_query_target__cadence

val targets__big_query_target__cadence :
  ?schema_modified_cadence:
    targets__big_query_target__cadence__schema_modified_cadence list ->
  ?table_modified_cadence:
    targets__big_query_target__cadence__table_modified_cadence list ->
  unit ->
  targets__big_query_target__cadence

type targets__big_query_target__conditions__or_conditions

val targets__big_query_target__conditions__or_conditions :
  ?min_age:string prop ->
  ?min_row_count:float prop ->
  unit ->
  targets__big_query_target__conditions__or_conditions

type targets__big_query_target__conditions__types

val targets__big_query_target__conditions__types :
  ?types:string prop list ->
  unit ->
  targets__big_query_target__conditions__types

type targets__big_query_target__conditions

val targets__big_query_target__conditions :
  ?created_after:string prop ->
  ?type_collection:string prop ->
  ?or_conditions:
    targets__big_query_target__conditions__or_conditions list ->
  ?types:targets__big_query_target__conditions__types list ->
  unit ->
  targets__big_query_target__conditions

type targets__big_query_target__disabled

val targets__big_query_target__disabled :
  unit -> targets__big_query_target__disabled

type targets__big_query_target__filter__other_tables

val targets__big_query_target__filter__other_tables :
  unit -> targets__big_query_target__filter__other_tables

type targets__big_query_target__filter__table_reference

val targets__big_query_target__filter__table_reference :
  dataset_id:string prop ->
  table_id:string prop ->
  unit ->
  targets__big_query_target__filter__table_reference

type targets__big_query_target__filter__tables__include_regexes__patterns

val targets__big_query_target__filter__tables__include_regexes__patterns :
  ?dataset_id_regex:string prop ->
  ?project_id_regex:string prop ->
  ?table_id_regex:string prop ->
  unit ->
  targets__big_query_target__filter__tables__include_regexes__patterns

type targets__big_query_target__filter__tables__include_regexes

val targets__big_query_target__filter__tables__include_regexes :
  ?patterns:
    targets__big_query_target__filter__tables__include_regexes__patterns
    list ->
  unit ->
  targets__big_query_target__filter__tables__include_regexes

type targets__big_query_target__filter__tables

val targets__big_query_target__filter__tables :
  ?include_regexes:
    targets__big_query_target__filter__tables__include_regexes list ->
  unit ->
  targets__big_query_target__filter__tables

type targets__big_query_target__filter

val targets__big_query_target__filter :
  ?other_tables:targets__big_query_target__filter__other_tables list ->
  ?table_reference:
    targets__big_query_target__filter__table_reference list ->
  ?tables:targets__big_query_target__filter__tables list ->
  unit ->
  targets__big_query_target__filter

type targets__big_query_target

val targets__big_query_target :
  ?cadence:targets__big_query_target__cadence list ->
  ?conditions:targets__big_query_target__conditions list ->
  ?disabled:targets__big_query_target__disabled list ->
  ?filter:targets__big_query_target__filter list ->
  unit ->
  targets__big_query_target

type targets__cloud_sql_target__conditions

val targets__cloud_sql_target__conditions :
  ?database_engines:string prop list ->
  ?types:string prop list ->
  unit ->
  targets__cloud_sql_target__conditions

type targets__cloud_sql_target__disabled

val targets__cloud_sql_target__disabled :
  unit -> targets__cloud_sql_target__disabled

type targets__cloud_sql_target__filter__collection__include_regexes__patterns

val targets__cloud_sql_target__filter__collection__include_regexes__patterns :
  ?database_regex:string prop ->
  ?database_resource_name_regex:string prop ->
  ?instance_regex:string prop ->
  ?project_id_regex:string prop ->
  unit ->
  targets__cloud_sql_target__filter__collection__include_regexes__patterns

type targets__cloud_sql_target__filter__collection__include_regexes

val targets__cloud_sql_target__filter__collection__include_regexes :
  ?patterns:
    targets__cloud_sql_target__filter__collection__include_regexes__patterns
    list ->
  unit ->
  targets__cloud_sql_target__filter__collection__include_regexes

type targets__cloud_sql_target__filter__collection

val targets__cloud_sql_target__filter__collection :
  ?include_regexes:
    targets__cloud_sql_target__filter__collection__include_regexes
    list ->
  unit ->
  targets__cloud_sql_target__filter__collection

type targets__cloud_sql_target__filter__database_resource_reference

val targets__cloud_sql_target__filter__database_resource_reference :
  database:string prop ->
  database_resource:string prop ->
  instance:string prop ->
  project_id:string prop ->
  unit ->
  targets__cloud_sql_target__filter__database_resource_reference

type targets__cloud_sql_target__filter__others

val targets__cloud_sql_target__filter__others :
  unit -> targets__cloud_sql_target__filter__others

type targets__cloud_sql_target__filter

val targets__cloud_sql_target__filter :
  ?collection:targets__cloud_sql_target__filter__collection list ->
  ?database_resource_reference:
    targets__cloud_sql_target__filter__database_resource_reference
    list ->
  ?others:targets__cloud_sql_target__filter__others list ->
  unit ->
  targets__cloud_sql_target__filter

type targets__cloud_sql_target__generation_cadence__schema_modified_cadence

val targets__cloud_sql_target__generation_cadence__schema_modified_cadence :
  ?frequency:string prop ->
  ?types:string prop list ->
  unit ->
  targets__cloud_sql_target__generation_cadence__schema_modified_cadence

type targets__cloud_sql_target__generation_cadence

val targets__cloud_sql_target__generation_cadence :
  ?refresh_frequency:string prop ->
  ?schema_modified_cadence:
    targets__cloud_sql_target__generation_cadence__schema_modified_cadence
    list ->
  unit ->
  targets__cloud_sql_target__generation_cadence

type targets__cloud_sql_target

val targets__cloud_sql_target :
  ?conditions:targets__cloud_sql_target__conditions list ->
  ?disabled:targets__cloud_sql_target__disabled list ->
  ?generation_cadence:
    targets__cloud_sql_target__generation_cadence list ->
  filter:targets__cloud_sql_target__filter list ->
  unit ->
  targets__cloud_sql_target

type targets__secrets_target

val targets__secrets_target : unit -> targets__secrets_target

type targets

val targets :
  ?big_query_target:targets__big_query_target list ->
  ?cloud_sql_target:targets__cloud_sql_target list ->
  ?secrets_target:targets__secrets_target list ->
  unit ->
  targets

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_data_loss_prevention_discovery_config

val google_data_loss_prevention_discovery_config :
  ?display_name:string prop ->
  ?id:string prop ->
  ?inspect_templates:string prop list ->
  ?status:string prop ->
  ?actions:actions list ->
  ?org_config:org_config list ->
  ?targets:targets list ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  unit ->
  google_data_loss_prevention_discovery_config

val yojson_of_google_data_loss_prevention_discovery_config :
  google_data_loss_prevention_discovery_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  display_name : string prop;
  errors : errors list prop;
  id : string prop;
  inspect_templates : string list prop;
  last_run_time : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  status : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?inspect_templates:string prop list ->
  ?status:string prop ->
  ?actions:actions list ->
  ?org_config:org_config list ->
  ?targets:targets list ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?inspect_templates:string prop list ->
  ?status:string prop ->
  ?actions:actions list ->
  ?org_config:org_config list ->
  ?targets:targets list ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
