(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type basic_sli__availability = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic_sli__availability) -> ()

let yojson_of_basic_sli__availability =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : basic_sli__availability -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic_sli__availability

[@@@deriving.end]

type basic_sli__latency = { threshold : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : basic_sli__latency) -> ()

let yojson_of_basic_sli__latency =
  (function
   | { threshold = v_threshold } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_threshold in
         ("threshold", arg) :: bnds
       in
       `Assoc bnds
    : basic_sli__latency -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic_sli__latency

[@@@deriving.end]

type basic_sli = {
  location : string prop list option; [@option]
  method_ : string prop list option; [@option] [@key "method"]
  version : string prop list option; [@option]
  availability : basic_sli__availability list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  latency : basic_sli__latency list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic_sli) -> ()

let yojson_of_basic_sli =
  (function
   | {
       location = v_location;
       method_ = v_method_;
       version = v_version;
       availability = v_availability;
       latency = v_latency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_latency then bnds
         else
           let arg =
             (yojson_of_list yojson_of_basic_sli__latency) v_latency
           in
           let bnd = "latency", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_availability then bnds
         else
           let arg =
             (yojson_of_list yojson_of_basic_sli__availability)
               v_availability
           in
           let bnd = "availability", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : basic_sli -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic_sli

[@@@deriving.end]

type request_based_sli__distribution_cut__range = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request_based_sli__distribution_cut__range) -> ()

let yojson_of_request_based_sli__distribution_cut__range =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request_based_sli__distribution_cut__range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request_based_sli__distribution_cut__range

[@@@deriving.end]

type request_based_sli__distribution_cut = {
  distribution_filter : string prop;
  range : request_based_sli__distribution_cut__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request_based_sli__distribution_cut) -> ()

let yojson_of_request_based_sli__distribution_cut =
  (function
   | { distribution_filter = v_distribution_filter; range = v_range }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_request_based_sli__distribution_cut__range)
               v_range
           in
           let bnd = "range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_distribution_filter
         in
         ("distribution_filter", arg) :: bnds
       in
       `Assoc bnds
    : request_based_sli__distribution_cut ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request_based_sli__distribution_cut

[@@@deriving.end]

type request_based_sli__good_total_ratio = {
  bad_service_filter : string prop option; [@option]
  good_service_filter : string prop option; [@option]
  total_service_filter : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request_based_sli__good_total_ratio) -> ()

let yojson_of_request_based_sli__good_total_ratio =
  (function
   | {
       bad_service_filter = v_bad_service_filter;
       good_service_filter = v_good_service_filter;
       total_service_filter = v_total_service_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_total_service_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "total_service_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_good_service_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "good_service_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bad_service_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bad_service_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request_based_sli__good_total_ratio ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request_based_sli__good_total_ratio

[@@@deriving.end]

type request_based_sli = {
  distribution_cut : request_based_sli__distribution_cut list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  good_total_ratio : request_based_sli__good_total_ratio list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request_based_sli) -> ()

let yojson_of_request_based_sli =
  (function
   | {
       distribution_cut = v_distribution_cut;
       good_total_ratio = v_good_total_ratio;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_good_total_ratio then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_request_based_sli__good_total_ratio)
               v_good_total_ratio
           in
           let bnd = "good_total_ratio", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_distribution_cut then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_request_based_sli__distribution_cut)
               v_distribution_cut
           in
           let bnd = "distribution_cut", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : request_based_sli -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request_based_sli

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability) ->
  ()

let yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability
    =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability

[@@@deriving.end]

type windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency = {
  threshold : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency) ->
  ()

let yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency
    =
  (function
   | { threshold = v_threshold } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_threshold in
         ("threshold", arg) :: bnds
       in
       `Assoc bnds
    : windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency

[@@@deriving.end]

type windows_based_sli__good_total_ratio_threshold__basic_sli_performance = {
  location : string prop list option; [@option]
  method_ : string prop list option; [@option] [@key "method"]
  version : string prop list option; [@option]
  availability :
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  latency :
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       windows_based_sli__good_total_ratio_threshold__basic_sli_performance) ->
  ()

let yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance
    =
  (function
   | {
       location = v_location;
       method_ = v_method_;
       version = v_version;
       availability = v_availability;
       latency = v_latency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_latency then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency)
               v_latency
           in
           let bnd = "latency", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_availability then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability)
               v_availability
           in
           let bnd = "availability", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli__good_total_ratio_threshold__basic_sli_performance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance

[@@@deriving.end]

type windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range) ->
  ()

let yojson_of_windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range

[@@@deriving.end]

type windows_based_sli__good_total_ratio_threshold__performance__distribution_cut = {
  distribution_filter : string prop;
  range :
    windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       windows_based_sli__good_total_ratio_threshold__performance__distribution_cut) ->
  ()

let yojson_of_windows_based_sli__good_total_ratio_threshold__performance__distribution_cut
    =
  (function
   | { distribution_filter = v_distribution_filter; range = v_range }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range)
               v_range
           in
           let bnd = "range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_distribution_filter
         in
         ("distribution_filter", arg) :: bnds
       in
       `Assoc bnds
    : windows_based_sli__good_total_ratio_threshold__performance__distribution_cut ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_windows_based_sli__good_total_ratio_threshold__performance__distribution_cut

[@@@deriving.end]

type windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio = {
  bad_service_filter : string prop option; [@option]
  good_service_filter : string prop option; [@option]
  total_service_filter : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio) ->
  ()

let yojson_of_windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio
    =
  (function
   | {
       bad_service_filter = v_bad_service_filter;
       good_service_filter = v_good_service_filter;
       total_service_filter = v_total_service_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_total_service_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "total_service_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_good_service_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "good_service_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bad_service_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bad_service_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio

[@@@deriving.end]

type windows_based_sli__good_total_ratio_threshold__performance = {
  distribution_cut :
    windows_based_sli__good_total_ratio_threshold__performance__distribution_cut
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  good_total_ratio :
    windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : windows_based_sli__good_total_ratio_threshold__performance) ->
  ()

let yojson_of_windows_based_sli__good_total_ratio_threshold__performance
    =
  (function
   | {
       distribution_cut = v_distribution_cut;
       good_total_ratio = v_good_total_ratio;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_good_total_ratio then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio)
               v_good_total_ratio
           in
           let bnd = "good_total_ratio", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_distribution_cut then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__good_total_ratio_threshold__performance__distribution_cut)
               v_distribution_cut
           in
           let bnd = "distribution_cut", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli__good_total_ratio_threshold__performance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_windows_based_sli__good_total_ratio_threshold__performance

[@@@deriving.end]

type windows_based_sli__good_total_ratio_threshold = {
  threshold : float prop option; [@option]
  basic_sli_performance :
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  performance :
    windows_based_sli__good_total_ratio_threshold__performance list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_based_sli__good_total_ratio_threshold) -> ()

let yojson_of_windows_based_sli__good_total_ratio_threshold =
  (function
   | {
       threshold = v_threshold;
       basic_sli_performance = v_basic_sli_performance;
       performance = v_performance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_performance then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__good_total_ratio_threshold__performance)
               v_performance
           in
           let bnd = "performance", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_basic_sli_performance then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__good_total_ratio_threshold__basic_sli_performance)
               v_basic_sli_performance
           in
           let bnd = "basic_sli_performance", arg in
           bnd :: bnds
       in
       let bnds =
         match v_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli__good_total_ratio_threshold ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_based_sli__good_total_ratio_threshold

[@@@deriving.end]

type windows_based_sli__metric_mean_in_range__range = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : windows_based_sli__metric_mean_in_range__range) -> ()

let yojson_of_windows_based_sli__metric_mean_in_range__range =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli__metric_mean_in_range__range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_based_sli__metric_mean_in_range__range

[@@@deriving.end]

type windows_based_sli__metric_mean_in_range = {
  time_series : string prop;
  range : windows_based_sli__metric_mean_in_range__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_based_sli__metric_mean_in_range) -> ()

let yojson_of_windows_based_sli__metric_mean_in_range =
  (function
   | { time_series = v_time_series; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__metric_mean_in_range__range)
               v_range
           in
           let bnd = "range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_series in
         ("time_series", arg) :: bnds
       in
       `Assoc bnds
    : windows_based_sli__metric_mean_in_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_based_sli__metric_mean_in_range

[@@@deriving.end]

type windows_based_sli__metric_sum_in_range__range = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_based_sli__metric_sum_in_range__range) -> ()

let yojson_of_windows_based_sli__metric_sum_in_range__range =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli__metric_sum_in_range__range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_based_sli__metric_sum_in_range__range

[@@@deriving.end]

type windows_based_sli__metric_sum_in_range = {
  time_series : string prop;
  range : windows_based_sli__metric_sum_in_range__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_based_sli__metric_sum_in_range) -> ()

let yojson_of_windows_based_sli__metric_sum_in_range =
  (function
   | { time_series = v_time_series; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__metric_sum_in_range__range)
               v_range
           in
           let bnd = "range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_series in
         ("time_series", arg) :: bnds
       in
       `Assoc bnds
    : windows_based_sli__metric_sum_in_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_based_sli__metric_sum_in_range

[@@@deriving.end]

type windows_based_sli = {
  good_bad_metric_filter : string prop option; [@option]
  window_period : string prop option; [@option]
  good_total_ratio_threshold :
    windows_based_sli__good_total_ratio_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metric_mean_in_range :
    windows_based_sli__metric_mean_in_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metric_sum_in_range : windows_based_sli__metric_sum_in_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_based_sli) -> ()

let yojson_of_windows_based_sli =
  (function
   | {
       good_bad_metric_filter = v_good_bad_metric_filter;
       window_period = v_window_period;
       good_total_ratio_threshold = v_good_total_ratio_threshold;
       metric_mean_in_range = v_metric_mean_in_range;
       metric_sum_in_range = v_metric_sum_in_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_metric_sum_in_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__metric_sum_in_range)
               v_metric_sum_in_range
           in
           let bnd = "metric_sum_in_range", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metric_mean_in_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__metric_mean_in_range)
               v_metric_mean_in_range
           in
           let bnd = "metric_mean_in_range", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_good_total_ratio_threshold then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_windows_based_sli__good_total_ratio_threshold)
               v_good_total_ratio_threshold
           in
           let bnd = "good_total_ratio_threshold", arg in
           bnd :: bnds
       in
       let bnds =
         match v_window_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "window_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_good_bad_metric_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "good_bad_metric_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_based_sli -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_based_sli

[@@@deriving.end]

type google_monitoring_slo = {
  calendar_period : string prop option; [@option]
  display_name : string prop option; [@option]
  goal : float prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  rolling_period_days : float prop option; [@option]
  service : string prop;
  slo_id : string prop option; [@option]
  user_labels : string prop Tf_core.assoc option; [@option]
  basic_sli : basic_sli list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_based_sli : request_based_sli list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  windows_based_sli : windows_based_sli list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_slo) -> ()

let yojson_of_google_monitoring_slo =
  (function
   | {
       calendar_period = v_calendar_period;
       display_name = v_display_name;
       goal = v_goal;
       id = v_id;
       project = v_project;
       rolling_period_days = v_rolling_period_days;
       service = v_service;
       slo_id = v_slo_id;
       user_labels = v_user_labels;
       basic_sli = v_basic_sli;
       request_based_sli = v_request_based_sli;
       timeouts = v_timeouts;
       windows_based_sli = v_windows_based_sli;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_windows_based_sli then bnds
         else
           let arg =
             (yojson_of_list yojson_of_windows_based_sli)
               v_windows_based_sli
           in
           let bnd = "windows_based_sli", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_based_sli then bnds
         else
           let arg =
             (yojson_of_list yojson_of_request_based_sli)
               v_request_based_sli
           in
           let bnd = "request_based_sli", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_basic_sli then bnds
         else
           let arg =
             (yojson_of_list yojson_of_basic_sli) v_basic_sli
           in
           let bnd = "basic_sli", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_slo_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "slo_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_rolling_period_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rolling_period_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         let arg = yojson_of_prop yojson_of_float v_goal in
         ("goal", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_calendar_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "calendar_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_monitoring_slo -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_slo

[@@@deriving.end]

let basic_sli__availability ?enabled () : basic_sli__availability =
  { enabled }

let basic_sli__latency ~threshold () : basic_sli__latency =
  { threshold }

let basic_sli ?location ?method_ ?version ?(availability = [])
    ?(latency = []) () : basic_sli =
  { location; method_; version; availability; latency }

let request_based_sli__distribution_cut__range ?max ?min () :
    request_based_sli__distribution_cut__range =
  { max; min }

let request_based_sli__distribution_cut ~distribution_filter ~range
    () : request_based_sli__distribution_cut =
  { distribution_filter; range }

let request_based_sli__good_total_ratio ?bad_service_filter
    ?good_service_filter ?total_service_filter () :
    request_based_sli__good_total_ratio =
  { bad_service_filter; good_service_filter; total_service_filter }

let request_based_sli ?(distribution_cut = [])
    ?(good_total_ratio = []) () : request_based_sli =
  { distribution_cut; good_total_ratio }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability
    ?enabled () :
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance__availability
    =
  { enabled }

let windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency
    ~threshold () :
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance__latency
    =
  { threshold }

let windows_based_sli__good_total_ratio_threshold__basic_sli_performance
    ?location ?method_ ?version ?(availability = []) ?(latency = [])
    () :
    windows_based_sli__good_total_ratio_threshold__basic_sli_performance
    =
  { location; method_; version; availability; latency }

let windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range
    ?max ?min () :
    windows_based_sli__good_total_ratio_threshold__performance__distribution_cut__range
    =
  { max; min }

let windows_based_sli__good_total_ratio_threshold__performance__distribution_cut
    ~distribution_filter ~range () :
    windows_based_sli__good_total_ratio_threshold__performance__distribution_cut
    =
  { distribution_filter; range }

let windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio
    ?bad_service_filter ?good_service_filter ?total_service_filter ()
    :
    windows_based_sli__good_total_ratio_threshold__performance__good_total_ratio
    =
  { bad_service_filter; good_service_filter; total_service_filter }

let windows_based_sli__good_total_ratio_threshold__performance
    ?(distribution_cut = []) ?(good_total_ratio = []) () :
    windows_based_sli__good_total_ratio_threshold__performance =
  { distribution_cut; good_total_ratio }

let windows_based_sli__good_total_ratio_threshold ?threshold
    ?(basic_sli_performance = []) ?(performance = []) () :
    windows_based_sli__good_total_ratio_threshold =
  { threshold; basic_sli_performance; performance }

let windows_based_sli__metric_mean_in_range__range ?max ?min () :
    windows_based_sli__metric_mean_in_range__range =
  { max; min }

let windows_based_sli__metric_mean_in_range ~time_series ~range () :
    windows_based_sli__metric_mean_in_range =
  { time_series; range }

let windows_based_sli__metric_sum_in_range__range ?max ?min () :
    windows_based_sli__metric_sum_in_range__range =
  { max; min }

let windows_based_sli__metric_sum_in_range ~time_series ~range () :
    windows_based_sli__metric_sum_in_range =
  { time_series; range }

let windows_based_sli ?good_bad_metric_filter ?window_period
    ?(good_total_ratio_threshold = []) ?(metric_mean_in_range = [])
    ?(metric_sum_in_range = []) () : windows_based_sli =
  {
    good_bad_metric_filter;
    window_period;
    good_total_ratio_threshold;
    metric_mean_in_range;
    metric_sum_in_range;
  }

let google_monitoring_slo ?calendar_period ?display_name ?id ?project
    ?rolling_period_days ?slo_id ?user_labels ?(basic_sli = [])
    ?(request_based_sli = []) ?timeouts ?(windows_based_sli = [])
    ~goal ~service () : google_monitoring_slo =
  {
    calendar_period;
    display_name;
    goal;
    id;
    project;
    rolling_period_days;
    service;
    slo_id;
    user_labels;
    basic_sli;
    request_based_sli;
    timeouts;
    windows_based_sli;
  }

type t = {
  tf_name : string;
  calendar_period : string prop;
  display_name : string prop;
  goal : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  rolling_period_days : float prop;
  service : string prop;
  slo_id : string prop;
  user_labels : string Tf_core.assoc prop;
}

let make ?calendar_period ?display_name ?id ?project
    ?rolling_period_days ?slo_id ?user_labels ?(basic_sli = [])
    ?(request_based_sli = []) ?timeouts ?(windows_based_sli = [])
    ~goal ~service __id =
  let __type = "google_monitoring_slo" in
  let __attrs =
    ({
       tf_name = __id;
       calendar_period = Prop.computed __type __id "calendar_period";
       display_name = Prop.computed __type __id "display_name";
       goal = Prop.computed __type __id "goal";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       rolling_period_days =
         Prop.computed __type __id "rolling_period_days";
       service = Prop.computed __type __id "service";
       slo_id = Prop.computed __type __id "slo_id";
       user_labels = Prop.computed __type __id "user_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_slo
        (google_monitoring_slo ?calendar_period ?display_name ?id
           ?project ?rolling_period_days ?slo_id ?user_labels
           ~basic_sli ~request_based_sli ?timeouts ~windows_based_sli
           ~goal ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?calendar_period ?display_name ?id ?project
    ?rolling_period_days ?slo_id ?user_labels ?(basic_sli = [])
    ?(request_based_sli = []) ?timeouts ?(windows_based_sli = [])
    ~goal ~service __id =
  let (r : _ Tf_core.resource) =
    make ?calendar_period ?display_name ?id ?project
      ?rolling_period_days ?slo_id ?user_labels ~basic_sli
      ~request_based_sli ?timeouts ~windows_based_sli ~goal ~service
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
