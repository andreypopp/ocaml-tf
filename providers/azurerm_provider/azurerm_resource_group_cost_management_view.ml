(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_group_cost_management_view__dataset__aggregation = {
  column_name : string prop;  (** column_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__dataset__aggregation *)

type azurerm_resource_group_cost_management_view__dataset__grouping = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__dataset__grouping *)

type azurerm_resource_group_cost_management_view__dataset__sorting = {
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__dataset__sorting *)

type azurerm_resource_group_cost_management_view__dataset = {
  granularity : string prop;  (** granularity *)
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
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__kpi *)

type azurerm_resource_group_cost_management_view__pivot = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__pivot *)

type azurerm_resource_group_cost_management_view__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view__timeouts *)

type azurerm_resource_group_cost_management_view = {
  accumulated : bool prop;  (** accumulated *)
  chart_type : string prop;  (** chart_type *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  report_type : string prop;  (** report_type *)
  resource_group_id : string prop;  (** resource_group_id *)
  timeframe : string prop;  (** timeframe *)
  dataset :
    azurerm_resource_group_cost_management_view__dataset list;
  kpi : azurerm_resource_group_cost_management_view__kpi list;
  pivot : azurerm_resource_group_cost_management_view__pivot list;
  timeouts :
    azurerm_resource_group_cost_management_view__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_cost_management_view *)

type t = {
  accumulated : bool prop;
  chart_type : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  report_type : string prop;
  resource_group_id : string prop;
  timeframe : string prop;
}

let azurerm_resource_group_cost_management_view ?id ?timeouts
    ~accumulated ~chart_type ~display_name ~name ~report_type
    ~resource_group_id ~timeframe ~dataset ~kpi ~pivot __resource_id
    =
  let __resource_type =
    "azurerm_resource_group_cost_management_view"
  in
  let __resource =
    ({
       accumulated;
       chart_type;
       display_name;
       id;
       name;
       report_type;
       resource_group_id;
       timeframe;
       dataset;
       kpi;
       pivot;
       timeouts;
     }
      : azurerm_resource_group_cost_management_view)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_group_cost_management_view __resource);
  let __resource_attributes =
    ({
       accumulated =
         Prop.computed __resource_type __resource_id "accumulated";
       chart_type =
         Prop.computed __resource_type __resource_id "chart_type";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       report_type =
         Prop.computed __resource_type __resource_id "report_type";
       resource_group_id =
         Prop.computed __resource_type __resource_id
           "resource_group_id";
       timeframe =
         Prop.computed __resource_type __resource_id "timeframe";
     }
      : t)
  in
  __resource_attributes
