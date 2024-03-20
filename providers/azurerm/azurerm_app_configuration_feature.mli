(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type targeting_filter__groups

val targeting_filter__groups :
  name:string prop ->
  rollout_percentage:float prop ->
  unit ->
  targeting_filter__groups

type targeting_filter

val targeting_filter :
  ?users:string prop list ->
  default_rollout_percentage:float prop ->
  groups:targeting_filter__groups list ->
  unit ->
  targeting_filter

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type timewindow_filter

val timewindow_filter :
  ?end_:string prop ->
  ?start:string prop ->
  unit ->
  timewindow_filter

type azurerm_app_configuration_feature

val azurerm_app_configuration_feature :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?key:string prop ->
  ?label:string prop ->
  ?locked:bool prop ->
  ?percentage_filter_value:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  name:string prop ->
  targeting_filter:targeting_filter list ->
  timewindow_filter:timewindow_filter list ->
  unit ->
  azurerm_app_configuration_feature

val yojson_of_azurerm_app_configuration_feature :
  azurerm_app_configuration_feature -> json

(** RESOURCE REGISTRATION *)

type t = private {
  configuration_store_id : string prop;
  description : string prop;
  enabled : bool prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  name : string prop;
  percentage_filter_value : float prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?key:string prop ->
  ?label:string prop ->
  ?locked:bool prop ->
  ?percentage_filter_value:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  name:string prop ->
  targeting_filter:targeting_filter list ->
  timewindow_filter:timewindow_filter list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?key:string prop ->
  ?label:string prop ->
  ?locked:bool prop ->
  ?percentage_filter_value:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  name:string prop ->
  targeting_filter:targeting_filter list ->
  timewindow_filter:timewindow_filter list ->
  string ->
  t Tf_core.resource
