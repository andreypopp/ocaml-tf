(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_group_cost_management_view__dataset__aggregation = {
  column_name : string;  (** column_name *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__dataset__aggregation *)

type azurerm_resource_group_cost_management_view__dataset__grouping = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__dataset__grouping *)

type azurerm_resource_group_cost_management_view__dataset__sorting = {
  direction : string;  (** direction *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__dataset__sorting *)

type azurerm_resource_group_cost_management_view__dataset = {
  granularity : string;  (** granularity *)
  aggregation :
    azurerm_resource_group_cost_management_view__dataset__aggregation
    list;
  grouping :
    azurerm_resource_group_cost_management_view__dataset__grouping
    list;
  sorting :
    azurerm_resource_group_cost_management_view__dataset__sorting
    list;
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__dataset *)

type azurerm_resource_group_cost_management_view__kpi = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__kpi *)

type azurerm_resource_group_cost_management_view__pivot = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__pivot *)

type azurerm_resource_group_cost_management_view__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__timeouts *)

type azurerm_resource_group_cost_management_view = {
  accumulated : bool;  (** accumulated *)
  chart_type : string;  (** chart_type *)
  display_name : string;  (** display_name *)
  name : string;  (** name *)
  report_type : string;  (** report_type *)
  resource_group_id : string;  (** resource_group_id *)
  timeframe : string;  (** timeframe *)
  dataset :
    azurerm_resource_group_cost_management_view__dataset list;
  kpi : azurerm_resource_group_cost_management_view__kpi list;
  pivot : azurerm_resource_group_cost_management_view__pivot list;
  timeouts :
    azurerm_resource_group_cost_management_view__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view *)

let azurerm_resource_group_cost_management_view ?timeouts
    ~accumulated ~chart_type ~display_name ~name ~report_type
    ~resource_group_id ~timeframe ~dataset ~kpi ~pivot __resource_id
    =
  let __resource_type =
    "azurerm_resource_group_cost_management_view"
  in
  let __resource =
    {
      accumulated;
      chart_type;
      display_name;
      name;
      report_type;
      resource_group_id;
      timeframe;
      dataset;
      kpi;
      pivot;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_group_cost_management_view __resource);
  ()
