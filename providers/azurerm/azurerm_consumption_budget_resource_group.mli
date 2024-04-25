(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter__dimension

val filter__dimension :
  ?operator:string prop ->
  name:string prop ->
  values:string prop list ->
  unit ->
  filter__dimension

type filter__not__dimension

val filter__not__dimension :
  ?operator:string prop ->
  name:string prop ->
  values:string prop list ->
  unit ->
  filter__not__dimension

type filter__not__tag

val filter__not__tag :
  ?operator:string prop ->
  name:string prop ->
  values:string prop list ->
  unit ->
  filter__not__tag

type filter__not

val filter__not :
  ?dimension:filter__not__dimension list ->
  ?tag:filter__not__tag list ->
  unit ->
  filter__not

type filter__tag

val filter__tag :
  ?operator:string prop ->
  name:string prop ->
  values:string prop list ->
  unit ->
  filter__tag

type filter

val filter :
  ?not:filter__not list ->
  dimension:filter__dimension list ->
  tag:filter__tag list ->
  unit ->
  filter

type notification

val notification :
  ?contact_emails:string prop list ->
  ?contact_groups:string prop list ->
  ?contact_roles:string prop list ->
  ?enabled:bool prop ->
  ?threshold_type:string prop ->
  operator:string prop ->
  threshold:float prop ->
  unit ->
  notification

type time_period

val time_period :
  ?end_date:string prop ->
  start_date:string prop ->
  unit ->
  time_period

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_consumption_budget_resource_group

val azurerm_consumption_budget_resource_group :
  ?etag:string prop ->
  ?id:string prop ->
  ?time_grain:string prop ->
  ?filter:filter list ->
  ?timeouts:timeouts ->
  amount:float prop ->
  name:string prop ->
  resource_group_id:string prop ->
  notification:notification list ->
  time_period:time_period list ->
  unit ->
  azurerm_consumption_budget_resource_group

val yojson_of_azurerm_consumption_budget_resource_group :
  azurerm_consumption_budget_resource_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  amount : float prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  resource_group_id : string prop;
  time_grain : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?etag:string prop ->
  ?id:string prop ->
  ?time_grain:string prop ->
  ?filter:filter list ->
  ?timeouts:timeouts ->
  amount:float prop ->
  name:string prop ->
  resource_group_id:string prop ->
  notification:notification list ->
  time_period:time_period list ->
  string ->
  t

val make :
  ?etag:string prop ->
  ?id:string prop ->
  ?time_grain:string prop ->
  ?filter:filter list ->
  ?timeouts:timeouts ->
  amount:float prop ->
  name:string prop ->
  resource_group_id:string prop ->
  notification:notification list ->
  time_period:time_period list ->
  string ->
  t Tf_core.resource
