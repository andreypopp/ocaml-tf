(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type dataset__aggregation = {
  column_name : string prop;  (** column_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** dataset__aggregation *)

type dataset__grouping = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** dataset__grouping *)

type dataset__sorting = {
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** dataset__sorting *)

type dataset = {
  granularity : string prop;  (** granularity *)
  aggregation : dataset__aggregation list;
  grouping : dataset__grouping list;
  sorting : dataset__sorting list;
}
[@@deriving yojson_of]
(** dataset *)

type kpi = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** kpi *)

type pivot = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** pivot *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_subscription_cost_management_view = {
  accumulated : bool prop;  (** accumulated *)
  chart_type : string prop;  (** chart_type *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  report_type : string prop;  (** report_type *)
  subscription_id : string prop;  (** subscription_id *)
  timeframe : string prop;  (** timeframe *)
  dataset : dataset list;
  kpi : kpi list;
  pivot : pivot list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription_cost_management_view *)

let dataset__aggregation ~column_name ~name () : dataset__aggregation
    =
  { column_name; name }

let dataset__grouping ~name ~type_ () : dataset__grouping =
  { name; type_ }

let dataset__sorting ~direction ~name () : dataset__sorting =
  { direction; name }

let dataset ~granularity ~aggregation ~grouping ~sorting () : dataset
    =
  { granularity; aggregation; grouping; sorting }

let kpi ~type_ () : kpi = { type_ }
let pivot ~name ~type_ () : pivot = { name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subscription_cost_management_view ?id ?timeouts
    ~accumulated ~chart_type ~display_name ~name ~report_type
    ~subscription_id ~timeframe ~dataset ~kpi ~pivot () :
    azurerm_subscription_cost_management_view =
  {
    accumulated;
    chart_type;
    display_name;
    id;
    name;
    report_type;
    subscription_id;
    timeframe;
    dataset;
    kpi;
    pivot;
    timeouts;
  }

type t = {
  accumulated : bool prop;
  chart_type : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  report_type : string prop;
  subscription_id : string prop;
  timeframe : string prop;
}

let register ?tf_module ?id ?timeouts ~accumulated ~chart_type
    ~display_name ~name ~report_type ~subscription_id ~timeframe
    ~dataset ~kpi ~pivot __resource_id =
  let __resource_type =
    "azurerm_subscription_cost_management_view"
  in
  let __resource =
    azurerm_subscription_cost_management_view ?id ?timeouts
      ~accumulated ~chart_type ~display_name ~name ~report_type
      ~subscription_id ~timeframe ~dataset ~kpi ~pivot ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subscription_cost_management_view __resource);
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
       subscription_id =
         Prop.computed __resource_type __resource_id
           "subscription_id";
       timeframe =
         Prop.computed __resource_type __resource_id "timeframe";
     }
      : t)
  in
  __resource_attributes
