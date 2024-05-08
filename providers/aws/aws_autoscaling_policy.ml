(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;
  namespace : string prop;
  dimensions :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    =
  (function
   | {
       metric_name = v_metric_name;
       namespace = v_namespace;
       dimensions = v_dimensions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_dimensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions)
               v_dimensions
           in
           let bnd = "dimensions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;
  unit : string prop option; [@option]
  metric :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    =
  (function
   | { stat = v_stat; unit = v_unit; metric = v_metric } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stat in
         ("stat", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]
  id : string prop;
  label : string prop option; [@option]
  return_data : bool prop option; [@option]
  metric_stat :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    =
  (function
   | {
       expression = v_expression;
       id = v_id;
       label = v_label;
       return_data = v_return_data;
       metric_stat = v_metric_stat;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_stat then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat)
               v_metric_stat
           in
           let bnd = "metric_stat", arg in
           bnd :: bnds
       in
       let bnds =
         match v_return_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification = {
  metric_data_queries :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    =
  (function
   | { metric_data_queries = v_metric_data_queries } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_data_queries then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries)
               v_metric_data_queries
           in
           let bnd = "metric_data_queries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;
  namespace : string prop;
  dimensions :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    =
  (function
   | {
       metric_name = v_metric_name;
       namespace = v_namespace;
       dimensions = v_dimensions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_dimensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions)
               v_dimensions
           in
           let bnd = "dimensions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;
  unit : string prop option; [@option]
  metric :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    =
  (function
   | { stat = v_stat; unit = v_unit; metric = v_metric } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stat in
         ("stat", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]
  id : string prop;
  label : string prop option; [@option]
  return_data : bool prop option; [@option]
  metric_stat :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    =
  (function
   | {
       expression = v_expression;
       id = v_id;
       label = v_label;
       return_data = v_return_data;
       metric_stat = v_metric_stat;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_stat then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat)
               v_metric_stat
           in
           let bnd = "metric_stat", arg in
           bnd :: bnds
       in
       let bnds =
         match v_return_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification = {
  metric_data_queries :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_load_metric_specification) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    =
  (function
   | { metric_data_queries = v_metric_data_queries } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_data_queries then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries)
               v_metric_data_queries
           in
           let bnd = "metric_data_queries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_load_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;
  namespace : string prop;
  dimensions :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    =
  (function
   | {
       metric_name = v_metric_name;
       namespace = v_namespace;
       dimensions = v_dimensions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_dimensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions)
               v_dimensions
           in
           let bnd = "dimensions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;
  unit : string prop option; [@option]
  metric :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    =
  (function
   | { stat = v_stat; unit = v_unit; metric = v_metric } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stat in
         ("stat", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]
  id : string prop;
  label : string prop option; [@option]
  return_data : bool prop option; [@option]
  metric_stat :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    =
  (function
   | {
       expression = v_expression;
       id = v_id;
       label = v_label;
       return_data = v_return_data;
       metric_stat = v_metric_stat;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_stat then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat)
               v_metric_stat
           in
           let bnd = "metric_stat", arg in
           bnd :: bnds
       in
       let bnds =
         match v_return_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification = {
  metric_data_queries :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    =
  (function
   | { metric_data_queries = v_metric_data_queries } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_data_queries then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries)
               v_metric_data_queries
           in
           let bnd = "metric_data_queries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__predefined_load_metric_specification = {
  predefined_metric_type : string prop;
  resource_label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__predefined_load_metric_specification) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    =
  (function
   | {
       predefined_metric_type = v_predefined_metric_type;
       resource_label = v_resource_label;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_predefined_metric_type
         in
         ("predefined_metric_type", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__predefined_load_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__predefined_load_metric_specification

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification = {
  predefined_metric_type : string prop;
  resource_label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    =
  (function
   | {
       predefined_metric_type = v_predefined_metric_type;
       resource_label = v_resource_label;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_predefined_metric_type
         in
         ("predefined_metric_type", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification = {
  predefined_metric_type : string prop;
  resource_label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    =
  (function
   | {
       predefined_metric_type = v_predefined_metric_type;
       resource_label = v_resource_label;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_predefined_metric_type
         in
         ("predefined_metric_type", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification

[@@@deriving.end]

type predictive_scaling_configuration__metric_specification = {
  target_value : float prop;
  customized_capacity_metric_specification :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
  customized_load_metric_specification :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
  customized_scaling_metric_specification :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
  predefined_load_metric_specification :
    predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
  predefined_metric_pair_specification :
    predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
  predefined_scaling_metric_specification :
    predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : predictive_scaling_configuration__metric_specification) ->
  ()

let yojson_of_predictive_scaling_configuration__metric_specification
    =
  (function
   | {
       target_value = v_target_value;
       customized_capacity_metric_specification =
         v_customized_capacity_metric_specification;
       customized_load_metric_specification =
         v_customized_load_metric_specification;
       customized_scaling_metric_specification =
         v_customized_scaling_metric_specification;
       predefined_load_metric_specification =
         v_predefined_load_metric_specification;
       predefined_metric_pair_specification =
         v_predefined_metric_pair_specification;
       predefined_scaling_metric_specification =
         v_predefined_scaling_metric_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_predefined_scaling_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification)
               v_predefined_scaling_metric_specification
           in
           let bnd =
             "predefined_scaling_metric_specification", arg
           in
           bnd :: bnds
       in
       let bnds =
         if [] = v_predefined_metric_pair_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification)
               v_predefined_metric_pair_specification
           in
           let bnd = "predefined_metric_pair_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_predefined_load_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__predefined_load_metric_specification)
               v_predefined_load_metric_specification
           in
           let bnd = "predefined_load_metric_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_customized_scaling_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification)
               v_customized_scaling_metric_specification
           in
           let bnd =
             "customized_scaling_metric_specification", arg
           in
           bnd :: bnds
       in
       let bnds =
         if [] = v_customized_load_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_load_metric_specification)
               v_customized_load_metric_specification
           in
           let bnd = "customized_load_metric_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_customized_capacity_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification)
               v_customized_capacity_metric_specification
           in
           let bnd =
             "customized_capacity_metric_specification", arg
           in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target_value in
         ("target_value", arg) :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration__metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_predictive_scaling_configuration__metric_specification

[@@@deriving.end]

type predictive_scaling_configuration = {
  max_capacity_breach_behavior : string prop option; [@option]
  max_capacity_buffer : string prop option; [@option]
  mode : string prop option; [@option]
  scheduling_buffer_time : string prop option; [@option]
  metric_specification :
    predictive_scaling_configuration__metric_specification list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predictive_scaling_configuration) -> ()

let yojson_of_predictive_scaling_configuration =
  (function
   | {
       max_capacity_breach_behavior = v_max_capacity_breach_behavior;
       max_capacity_buffer = v_max_capacity_buffer;
       mode = v_mode;
       scheduling_buffer_time = v_scheduling_buffer_time;
       metric_specification = v_metric_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration__metric_specification)
               v_metric_specification
           in
           let bnd = "metric_specification", arg in
           bnd :: bnds
       in
       let bnds =
         match v_scheduling_buffer_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheduling_buffer_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_capacity_buffer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_capacity_buffer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_capacity_breach_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_capacity_breach_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : predictive_scaling_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predictive_scaling_configuration

[@@@deriving.end]

type step_adjustment = {
  metric_interval_lower_bound : string prop option; [@option]
  metric_interval_upper_bound : string prop option; [@option]
  scaling_adjustment : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : step_adjustment) -> ()

let yojson_of_step_adjustment =
  (function
   | {
       metric_interval_lower_bound = v_metric_interval_lower_bound;
       metric_interval_upper_bound = v_metric_interval_upper_bound;
       scaling_adjustment = v_scaling_adjustment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_scaling_adjustment
         in
         ("scaling_adjustment", arg) :: bnds
       in
       let bnds =
         match v_metric_interval_upper_bound with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_interval_upper_bound", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metric_interval_lower_bound with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_interval_lower_bound", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : step_adjustment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_step_adjustment

[@@@deriving.end]

type target_tracking_configuration__customized_metric_specification__metric_dimension = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_configuration__customized_metric_specification__metric_dimension) ->
  ()

let yojson_of_target_tracking_configuration__customized_metric_specification__metric_dimension
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_configuration__customized_metric_specification__metric_dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_configuration__customized_metric_specification__metric_dimension

[@@@deriving.end]

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions) ->
  ()

let yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions

[@@@deriving.end]

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric = {
  metric_name : string prop;
  namespace : string prop;
  dimensions :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric) ->
  ()

let yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    =
  (function
   | {
       metric_name = v_metric_name;
       namespace = v_namespace;
       dimensions = v_dimensions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_dimensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions)
               v_dimensions
           in
           let bnd = "dimensions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric

[@@@deriving.end]

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat = {
  stat : string prop;
  unit : string prop option; [@option]
  metric :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_configuration__customized_metric_specification__metrics__metric_stat) ->
  ()

let yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    =
  (function
   | { stat = v_stat; unit = v_unit; metric = v_metric } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stat in
         ("stat", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_configuration__customized_metric_specification__metrics__metric_stat ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat

[@@@deriving.end]

type target_tracking_configuration__customized_metric_specification__metrics = {
  expression : string prop option; [@option]
  id : string prop;
  label : string prop option; [@option]
  return_data : bool prop option; [@option]
  metric_stat :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_configuration__customized_metric_specification__metrics) ->
  ()

let yojson_of_target_tracking_configuration__customized_metric_specification__metrics
    =
  (function
   | {
       expression = v_expression;
       id = v_id;
       label = v_label;
       return_data = v_return_data;
       metric_stat = v_metric_stat;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_stat then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_configuration__customized_metric_specification__metrics__metric_stat)
               v_metric_stat
           in
           let bnd = "metric_stat", arg in
           bnd :: bnds
       in
       let bnds =
         match v_return_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_tracking_configuration__customized_metric_specification__metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_configuration__customized_metric_specification__metrics

[@@@deriving.end]

type target_tracking_configuration__customized_metric_specification = {
  metric_name : string prop option; [@option]
  namespace : string prop option; [@option]
  statistic : string prop option; [@option]
  unit : string prop option; [@option]
  metric_dimension :
    target_tracking_configuration__customized_metric_specification__metric_dimension
    list;
      [@default []] [@yojson_drop_default ( = )]
  metrics :
    target_tracking_configuration__customized_metric_specification__metrics
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_configuration__customized_metric_specification) ->
  ()

let yojson_of_target_tracking_configuration__customized_metric_specification
    =
  (function
   | {
       metric_name = v_metric_name;
       namespace = v_namespace;
       statistic = v_statistic;
       unit = v_unit;
       metric_dimension = v_metric_dimension;
       metrics = v_metrics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metrics then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_configuration__customized_metric_specification__metrics)
               v_metrics
           in
           let bnd = "metrics", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_metric_dimension then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_configuration__customized_metric_specification__metric_dimension)
               v_metric_dimension
           in
           let bnd = "metric_dimension", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statistic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statistic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metric_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_tracking_configuration__customized_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_configuration__customized_metric_specification

[@@@deriving.end]

type target_tracking_configuration__predefined_metric_specification = {
  predefined_metric_type : string prop;
  resource_label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_configuration__predefined_metric_specification) ->
  ()

let yojson_of_target_tracking_configuration__predefined_metric_specification
    =
  (function
   | {
       predefined_metric_type = v_predefined_metric_type;
       resource_label = v_resource_label;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_predefined_metric_type
         in
         ("predefined_metric_type", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_configuration__predefined_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_configuration__predefined_metric_specification

[@@@deriving.end]

type target_tracking_configuration = {
  disable_scale_in : bool prop option; [@option]
  target_value : float prop;
  customized_metric_specification :
    target_tracking_configuration__customized_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
  predefined_metric_specification :
    target_tracking_configuration__predefined_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_tracking_configuration) -> ()

let yojson_of_target_tracking_configuration =
  (function
   | {
       disable_scale_in = v_disable_scale_in;
       target_value = v_target_value;
       customized_metric_specification =
         v_customized_metric_specification;
       predefined_metric_specification =
         v_predefined_metric_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_predefined_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_configuration__predefined_metric_specification)
               v_predefined_metric_specification
           in
           let bnd = "predefined_metric_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_customized_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_configuration__customized_metric_specification)
               v_customized_metric_specification
           in
           let bnd = "customized_metric_specification", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target_value in
         ("target_value", arg) :: bnds
       in
       let bnds =
         match v_disable_scale_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_scale_in", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_tracking_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_tracking_configuration

[@@@deriving.end]

type aws_autoscaling_policy = {
  adjustment_type : string prop option; [@option]
  autoscaling_group_name : string prop;
  cooldown : float prop option; [@option]
  enabled : bool prop option; [@option]
  estimated_instance_warmup : float prop option; [@option]
  id : string prop option; [@option]
  metric_aggregation_type : string prop option; [@option]
  min_adjustment_magnitude : float prop option; [@option]
  name : string prop;
  policy_type : string prop option; [@option]
  scaling_adjustment : float prop option; [@option]
  predictive_scaling_configuration :
    predictive_scaling_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  step_adjustment : step_adjustment list;
      [@default []] [@yojson_drop_default ( = )]
  target_tracking_configuration : target_tracking_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_policy) -> ()

let yojson_of_aws_autoscaling_policy =
  (function
   | {
       adjustment_type = v_adjustment_type;
       autoscaling_group_name = v_autoscaling_group_name;
       cooldown = v_cooldown;
       enabled = v_enabled;
       estimated_instance_warmup = v_estimated_instance_warmup;
       id = v_id;
       metric_aggregation_type = v_metric_aggregation_type;
       min_adjustment_magnitude = v_min_adjustment_magnitude;
       name = v_name;
       policy_type = v_policy_type;
       scaling_adjustment = v_scaling_adjustment;
       predictive_scaling_configuration =
         v_predictive_scaling_configuration;
       step_adjustment = v_step_adjustment;
       target_tracking_configuration =
         v_target_tracking_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_target_tracking_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_tracking_configuration)
               v_target_tracking_configuration
           in
           let bnd = "target_tracking_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_step_adjustment then bnds
         else
           let arg =
             (yojson_of_list yojson_of_step_adjustment)
               v_step_adjustment
           in
           let bnd = "step_adjustment", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_predictive_scaling_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_predictive_scaling_configuration)
               v_predictive_scaling_configuration
           in
           let bnd = "predictive_scaling_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_scaling_adjustment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scaling_adjustment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_adjustment_magnitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_adjustment_magnitude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metric_aggregation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_aggregation_type", arg in
             bnd :: bnds
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
         match v_estimated_instance_warmup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "estimated_instance_warmup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cooldown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cooldown", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_autoscaling_group_name
         in
         ("autoscaling_group_name", arg) :: bnds
       in
       let bnds =
         match v_adjustment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "adjustment_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_autoscaling_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_policy

[@@@deriving.end]

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    ~name ~value () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  { name; value }

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    ?unit ~stat ~metric () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    =
  { stat; unit; metric }

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    ?expression ?label ?return_data ?(metric_stat = []) ~id () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    =
  { expression; id; label; return_data; metric_stat }

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    ~metric_data_queries () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    =
  { metric_data_queries }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    ~name ~value () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  { name; value }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    ?unit ~stat ~metric () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    =
  { stat; unit; metric }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    ?expression ?label ?return_data ?(metric_stat = []) ~id () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    =
  { expression; id; label; return_data; metric_stat }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    ~metric_data_queries () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    =
  { metric_data_queries }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    ~name ~value () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  { name; value }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    ?unit ~stat ~metric () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    =
  { stat; unit; metric }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    ?expression ?label ?return_data ?(metric_stat = []) ~id () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    =
  { expression; id; label; return_data; metric_stat }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    ~metric_data_queries () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    =
  { metric_data_queries }

let predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    ?resource_label ~predefined_metric_type () :
    predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    =
  { predefined_metric_type; resource_label }

let predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    ?resource_label ~predefined_metric_type () :
    predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    =
  { predefined_metric_type; resource_label }

let predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    ?resource_label ~predefined_metric_type () :
    predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    =
  { predefined_metric_type; resource_label }

let predictive_scaling_configuration__metric_specification
    ?(customized_capacity_metric_specification = [])
    ?(customized_load_metric_specification = [])
    ?(customized_scaling_metric_specification = [])
    ?(predefined_load_metric_specification = [])
    ?(predefined_metric_pair_specification = [])
    ?(predefined_scaling_metric_specification = []) ~target_value ()
    : predictive_scaling_configuration__metric_specification =
  {
    target_value;
    customized_capacity_metric_specification;
    customized_load_metric_specification;
    customized_scaling_metric_specification;
    predefined_load_metric_specification;
    predefined_metric_pair_specification;
    predefined_scaling_metric_specification;
  }

let predictive_scaling_configuration ?max_capacity_breach_behavior
    ?max_capacity_buffer ?mode ?scheduling_buffer_time
    ~metric_specification () : predictive_scaling_configuration =
  {
    max_capacity_breach_behavior;
    max_capacity_buffer;
    mode;
    scheduling_buffer_time;
    metric_specification;
  }

let step_adjustment ?metric_interval_lower_bound
    ?metric_interval_upper_bound ~scaling_adjustment () :
    step_adjustment =
  {
    metric_interval_lower_bound;
    metric_interval_upper_bound;
    scaling_adjustment;
  }

let target_tracking_configuration__customized_metric_specification__metric_dimension
    ~name ~value () :
    target_tracking_configuration__customized_metric_specification__metric_dimension
    =
  { name; value }

let target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    ~name ~value () :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    =
  { name; value }

let target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    ?unit ~stat ~metric () :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    =
  { stat; unit; metric }

let target_tracking_configuration__customized_metric_specification__metrics
    ?expression ?label ?return_data ?(metric_stat = []) ~id () :
    target_tracking_configuration__customized_metric_specification__metrics
    =
  { expression; id; label; return_data; metric_stat }

let target_tracking_configuration__customized_metric_specification
    ?metric_name ?namespace ?statistic ?unit ?(metric_dimension = [])
    ~metrics () :
    target_tracking_configuration__customized_metric_specification =
  {
    metric_name;
    namespace;
    statistic;
    unit;
    metric_dimension;
    metrics;
  }

let target_tracking_configuration__predefined_metric_specification
    ?resource_label ~predefined_metric_type () :
    target_tracking_configuration__predefined_metric_specification =
  { predefined_metric_type; resource_label }

let target_tracking_configuration ?disable_scale_in
    ?(customized_metric_specification = [])
    ?(predefined_metric_specification = []) ~target_value () :
    target_tracking_configuration =
  {
    disable_scale_in;
    target_value;
    customized_metric_specification;
    predefined_metric_specification;
  }

let aws_autoscaling_policy ?adjustment_type ?cooldown ?enabled
    ?estimated_instance_warmup ?id ?metric_aggregation_type
    ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
    ?(predictive_scaling_configuration = [])
    ?(target_tracking_configuration = []) ~autoscaling_group_name
    ~name ~step_adjustment () : aws_autoscaling_policy =
  {
    adjustment_type;
    autoscaling_group_name;
    cooldown;
    enabled;
    estimated_instance_warmup;
    id;
    metric_aggregation_type;
    min_adjustment_magnitude;
    name;
    policy_type;
    scaling_adjustment;
    predictive_scaling_configuration;
    step_adjustment;
    target_tracking_configuration;
  }

type t = {
  tf_name : string;
  adjustment_type : string prop;
  arn : string prop;
  autoscaling_group_name : string prop;
  cooldown : float prop;
  enabled : bool prop;
  estimated_instance_warmup : float prop;
  id : string prop;
  metric_aggregation_type : string prop;
  min_adjustment_magnitude : float prop;
  name : string prop;
  policy_type : string prop;
  scaling_adjustment : float prop;
}

let make ?adjustment_type ?cooldown ?enabled
    ?estimated_instance_warmup ?id ?metric_aggregation_type
    ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
    ?(predictive_scaling_configuration = [])
    ?(target_tracking_configuration = []) ~autoscaling_group_name
    ~name ~step_adjustment __id =
  let __type = "aws_autoscaling_policy" in
  let __attrs =
    ({
       tf_name = __id;
       adjustment_type = Prop.computed __type __id "adjustment_type";
       arn = Prop.computed __type __id "arn";
       autoscaling_group_name =
         Prop.computed __type __id "autoscaling_group_name";
       cooldown = Prop.computed __type __id "cooldown";
       enabled = Prop.computed __type __id "enabled";
       estimated_instance_warmup =
         Prop.computed __type __id "estimated_instance_warmup";
       id = Prop.computed __type __id "id";
       metric_aggregation_type =
         Prop.computed __type __id "metric_aggregation_type";
       min_adjustment_magnitude =
         Prop.computed __type __id "min_adjustment_magnitude";
       name = Prop.computed __type __id "name";
       policy_type = Prop.computed __type __id "policy_type";
       scaling_adjustment =
         Prop.computed __type __id "scaling_adjustment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_policy
        (aws_autoscaling_policy ?adjustment_type ?cooldown ?enabled
           ?estimated_instance_warmup ?id ?metric_aggregation_type
           ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
           ~predictive_scaling_configuration
           ~target_tracking_configuration ~autoscaling_group_name
           ~name ~step_adjustment ());
    attrs = __attrs;
  }

let register ?tf_module ?adjustment_type ?cooldown ?enabled
    ?estimated_instance_warmup ?id ?metric_aggregation_type
    ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
    ?(predictive_scaling_configuration = [])
    ?(target_tracking_configuration = []) ~autoscaling_group_name
    ~name ~step_adjustment __id =
  let (r : _ Tf_core.resource) =
    make ?adjustment_type ?cooldown ?enabled
      ?estimated_instance_warmup ?id ?metric_aggregation_type
      ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
      ~predictive_scaling_configuration
      ~target_tracking_configuration ~autoscaling_group_name ~name
      ~step_adjustment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
