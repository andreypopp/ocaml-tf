(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dataset__aggregation

val dataset__aggregation :
  column_name:string prop ->
  name:string prop ->
  unit ->
  dataset__aggregation

type dataset__grouping

val dataset__grouping :
  name:string prop -> type_:string prop -> unit -> dataset__grouping

type dataset__sorting

val dataset__sorting :
  direction:string prop ->
  name:string prop ->
  unit ->
  dataset__sorting

type dataset

val dataset :
  granularity:string prop ->
  aggregation:dataset__aggregation list ->
  grouping:dataset__grouping list ->
  sorting:dataset__sorting list ->
  unit ->
  dataset

type kpi

val kpi : type_:string prop -> unit -> kpi

type pivot

val pivot : name:string prop -> type_:string prop -> unit -> pivot

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_subscription_cost_management_view

val azurerm_subscription_cost_management_view :
  ?id:string prop ->
  ?timeouts:timeouts ->
  accumulated:bool prop ->
  chart_type:string prop ->
  display_name:string prop ->
  name:string prop ->
  report_type:string prop ->
  subscription_id:string prop ->
  timeframe:string prop ->
  dataset:dataset list ->
  kpi:kpi list ->
  pivot:pivot list ->
  unit ->
  azurerm_subscription_cost_management_view

val yojson_of_azurerm_subscription_cost_management_view :
  azurerm_subscription_cost_management_view -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accumulated : bool prop;
  chart_type : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  report_type : string prop;
  subscription_id : string prop;
  timeframe : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  accumulated:bool prop ->
  chart_type:string prop ->
  display_name:string prop ->
  name:string prop ->
  report_type:string prop ->
  subscription_id:string prop ->
  timeframe:string prop ->
  dataset:dataset list ->
  kpi:kpi list ->
  pivot:pivot list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  accumulated:bool prop ->
  chart_type:string prop ->
  display_name:string prop ->
  name:string prop ->
  report_type:string prop ->
  subscription_id:string prop ->
  timeframe:string prop ->
  dataset:dataset list ->
  kpi:kpi list ->
  pivot:pivot list ->
  string ->
  t Tf_core.resource
