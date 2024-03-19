(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type release_criteria__recurrence__schedule__monthly

val release_criteria__recurrence__schedule__monthly :
  week:float prop ->
  weekday:string prop ->
  unit ->
  release_criteria__recurrence__schedule__monthly

type release_criteria__recurrence__schedule

val release_criteria__recurrence__schedule :
  ?hours:float prop list ->
  ?minutes:float prop list ->
  ?month_days:float prop list ->
  ?week_days:string prop list ->
  monthly:release_criteria__recurrence__schedule__monthly list ->
  unit ->
  release_criteria__recurrence__schedule

type release_criteria__recurrence

val release_criteria__recurrence :
  ?end_time:string prop ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  frequency:string prop ->
  interval:float prop ->
  schedule:release_criteria__recurrence__schedule list ->
  unit ->
  release_criteria__recurrence

type release_criteria

val release_criteria :
  ?batch_size:float prop ->
  ?message_count:float prop ->
  recurrence:release_criteria__recurrence list ->
  unit ->
  release_criteria

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_integration_account_batch_configuration

val azurerm_logic_app_integration_account_batch_configuration :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  batch_group_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  release_criteria:release_criteria list ->
  unit ->
  azurerm_logic_app_integration_account_batch_configuration

val yojson_of_azurerm_logic_app_integration_account_batch_configuration :
  azurerm_logic_app_integration_account_batch_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  batch_group_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  batch_group_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  release_criteria:release_criteria list ->
  string ->
  t
