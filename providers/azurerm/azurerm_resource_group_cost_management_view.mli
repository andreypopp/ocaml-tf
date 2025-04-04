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
  ?grouping:dataset__grouping list ->
  ?sorting:dataset__sorting list ->
  granularity:string prop ->
  aggregation:dataset__aggregation list ->
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

type azurerm_resource_group_cost_management_view

val azurerm_resource_group_cost_management_view :
  ?id:string prop ->
  ?kpi:kpi list ->
  ?pivot:pivot list ->
  ?timeouts:timeouts ->
  accumulated:bool prop ->
  chart_type:string prop ->
  display_name:string prop ->
  name:string prop ->
  report_type:string prop ->
  resource_group_id:string prop ->
  timeframe:string prop ->
  dataset:dataset list ->
  unit ->
  azurerm_resource_group_cost_management_view

val yojson_of_azurerm_resource_group_cost_management_view :
  azurerm_resource_group_cost_management_view -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accumulated : bool prop;
  chart_type : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  report_type : string prop;
  resource_group_id : string prop;
  timeframe : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kpi:kpi list ->
  ?pivot:pivot list ->
  ?timeouts:timeouts ->
  accumulated:bool prop ->
  chart_type:string prop ->
  display_name:string prop ->
  name:string prop ->
  report_type:string prop ->
  resource_group_id:string prop ->
  timeframe:string prop ->
  dataset:dataset list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kpi:kpi list ->
  ?pivot:pivot list ->
  ?timeouts:timeouts ->
  accumulated:bool prop ->
  chart_type:string prop ->
  display_name:string prop ->
  name:string prop ->
  report_type:string prop ->
  resource_group_id:string prop ->
  timeframe:string prop ->
  dataset:dataset list ->
  string ->
  t Tf_core.resource
