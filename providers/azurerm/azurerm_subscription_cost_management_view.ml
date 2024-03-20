(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dataset__aggregation = {
  column_name : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dataset__aggregation) -> ()

let yojson_of_dataset__aggregation =
  (function
   | { column_name = v_column_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       `Assoc bnds
    : dataset__aggregation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dataset__aggregation

[@@@deriving.end]

type dataset__grouping = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dataset__grouping) -> ()

let yojson_of_dataset__grouping =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : dataset__grouping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dataset__grouping

[@@@deriving.end]

type dataset__sorting = {
  direction : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dataset__sorting) -> ()

let yojson_of_dataset__sorting =
  (function
   | { direction = v_direction; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       `Assoc bnds
    : dataset__sorting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dataset__sorting

[@@@deriving.end]

type dataset = {
  granularity : string prop;
  aggregation : dataset__aggregation list;
  grouping : dataset__grouping list;
  sorting : dataset__sorting list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dataset) -> ()

let yojson_of_dataset =
  (function
   | {
       granularity = v_granularity;
       aggregation = v_aggregation;
       grouping = v_grouping;
       sorting = v_sorting;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dataset__sorting v_sorting
         in
         ("sorting", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dataset__grouping v_grouping
         in
         ("grouping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dataset__aggregation
             v_aggregation
         in
         ("aggregation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_granularity in
         ("granularity", arg) :: bnds
       in
       `Assoc bnds
    : dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dataset

[@@@deriving.end]

type kpi = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : kpi) -> ()

let yojson_of_kpi =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : kpi -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kpi

[@@@deriving.end]

type pivot = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pivot) -> ()

let yojson_of_pivot =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : pivot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pivot

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_subscription_cost_management_view = {
  accumulated : bool prop;
  chart_type : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  report_type : string prop;
  subscription_id : string prop;
  timeframe : string prop;
  dataset : dataset list;
  kpi : kpi list;
  pivot : pivot list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_subscription_cost_management_view) -> ()

let yojson_of_azurerm_subscription_cost_management_view =
  (function
   | {
       accumulated = v_accumulated;
       chart_type = v_chart_type;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       report_type = v_report_type;
       subscription_id = v_subscription_id;
       timeframe = v_timeframe;
       dataset = v_dataset;
       kpi = v_kpi;
       pivot = v_pivot;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_pivot v_pivot in
         ("pivot", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_kpi v_kpi in
         ("kpi", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_dataset v_dataset in
         ("dataset", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timeframe in
         ("timeframe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscription_id
         in
         ("subscription_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_report_type in
         ("report_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_chart_type in
         ("chart_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_accumulated in
         ("accumulated", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_subscription_cost_management_view ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_subscription_cost_management_view

[@@@deriving.end]

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

let make ?id ?timeouts ~accumulated ~chart_type ~display_name ~name
    ~report_type ~subscription_id ~timeframe ~dataset ~kpi ~pivot
    __id =
  let __type = "azurerm_subscription_cost_management_view" in
  let __attrs =
    ({
       accumulated = Prop.computed __type __id "accumulated";
       chart_type = Prop.computed __type __id "chart_type";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       report_type = Prop.computed __type __id "report_type";
       subscription_id = Prop.computed __type __id "subscription_id";
       timeframe = Prop.computed __type __id "timeframe";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subscription_cost_management_view
        (azurerm_subscription_cost_management_view ?id ?timeouts
           ~accumulated ~chart_type ~display_name ~name ~report_type
           ~subscription_id ~timeframe ~dataset ~kpi ~pivot ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~accumulated ~chart_type
    ~display_name ~name ~report_type ~subscription_id ~timeframe
    ~dataset ~kpi ~pivot __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~accumulated ~chart_type ~display_name ~name
      ~report_type ~subscription_id ~timeframe ~dataset ~kpi ~pivot
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
