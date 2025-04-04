(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filters__aws_account_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__aws_account_id) -> ()

let yojson_of_filters__aws_account_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__aws_account_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__aws_account_id

[@@@deriving.end]

type filters__company_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__company_name) -> ()

let yojson_of_filters__company_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__company_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__company_name

[@@@deriving.end]

type filters__compliance_status = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__compliance_status) -> ()

let yojson_of_filters__compliance_status =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__compliance_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__compliance_status

[@@@deriving.end]

type filters__confidence = {
  eq : string prop option; [@option]
  gte : string prop option; [@option]
  lte : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__confidence) -> ()

let yojson_of_filters__confidence =
  (function
   | { eq = v_eq; gte = v_gte; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__confidence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__confidence

[@@@deriving.end]

type filters__created_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__created_at__date_range) -> ()

let yojson_of_filters__created_at__date_range =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__created_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__created_at__date_range

[@@@deriving.end]

type filters__created_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : filters__created_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__created_at) -> ()

let yojson_of_filters__created_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__created_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__created_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__created_at

[@@@deriving.end]

type filters__criticality = {
  eq : string prop option; [@option]
  gte : string prop option; [@option]
  lte : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__criticality) -> ()

let yojson_of_filters__criticality =
  (function
   | { eq = v_eq; gte = v_gte; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__criticality -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__criticality

[@@@deriving.end]

type filters__description = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__description) -> ()

let yojson_of_filters__description =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__description -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__description

[@@@deriving.end]

type filters__finding_provider_fields_confidence = {
  eq : string prop option; [@option]
  gte : string prop option; [@option]
  lte : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__finding_provider_fields_confidence) -> ()

let yojson_of_filters__finding_provider_fields_confidence =
  (function
   | { eq = v_eq; gte = v_gte; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__finding_provider_fields_confidence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__finding_provider_fields_confidence

[@@@deriving.end]

type filters__finding_provider_fields_criticality = {
  eq : string prop option; [@option]
  gte : string prop option; [@option]
  lte : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__finding_provider_fields_criticality) -> ()

let yojson_of_filters__finding_provider_fields_criticality =
  (function
   | { eq = v_eq; gte = v_gte; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__finding_provider_fields_criticality ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__finding_provider_fields_criticality

[@@@deriving.end]

type filters__finding_provider_fields_related_findings_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__finding_provider_fields_related_findings_id) -> ()

let yojson_of_filters__finding_provider_fields_related_findings_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__finding_provider_fields_related_findings_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_filters__finding_provider_fields_related_findings_id

[@@@deriving.end]

type filters__finding_provider_fields_related_findings_product_arn = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       filters__finding_provider_fields_related_findings_product_arn) ->
  ()

let yojson_of_filters__finding_provider_fields_related_findings_product_arn
    =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__finding_provider_fields_related_findings_product_arn ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_filters__finding_provider_fields_related_findings_product_arn

[@@@deriving.end]

type filters__finding_provider_fields_severity_label = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__finding_provider_fields_severity_label) -> ()

let yojson_of_filters__finding_provider_fields_severity_label =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__finding_provider_fields_severity_label ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__finding_provider_fields_severity_label

[@@@deriving.end]

type filters__finding_provider_fields_severity_original = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__finding_provider_fields_severity_original) -> ()

let yojson_of_filters__finding_provider_fields_severity_original =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__finding_provider_fields_severity_original ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__finding_provider_fields_severity_original

[@@@deriving.end]

type filters__finding_provider_fields_types = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__finding_provider_fields_types) -> ()

let yojson_of_filters__finding_provider_fields_types =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__finding_provider_fields_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__finding_provider_fields_types

[@@@deriving.end]

type filters__first_observed_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__first_observed_at__date_range) -> ()

let yojson_of_filters__first_observed_at__date_range =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__first_observed_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__first_observed_at__date_range

[@@@deriving.end]

type filters__first_observed_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : filters__first_observed_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__first_observed_at) -> ()

let yojson_of_filters__first_observed_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__first_observed_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__first_observed_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__first_observed_at

[@@@deriving.end]

type filters__generator_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__generator_id) -> ()

let yojson_of_filters__generator_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__generator_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__generator_id

[@@@deriving.end]

type filters__id = { comparison : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__id) -> ()

let yojson_of_filters__id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__id

[@@@deriving.end]

type filters__keyword = { value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__keyword) -> ()

let yojson_of_filters__keyword =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : filters__keyword -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__keyword

[@@@deriving.end]

type filters__last_observed_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__last_observed_at__date_range) -> ()

let yojson_of_filters__last_observed_at__date_range =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__last_observed_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__last_observed_at__date_range

[@@@deriving.end]

type filters__last_observed_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : filters__last_observed_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__last_observed_at) -> ()

let yojson_of_filters__last_observed_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__last_observed_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__last_observed_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__last_observed_at

[@@@deriving.end]

type filters__malware_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__malware_name) -> ()

let yojson_of_filters__malware_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__malware_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__malware_name

[@@@deriving.end]

type filters__malware_path = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__malware_path) -> ()

let yojson_of_filters__malware_path =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__malware_path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__malware_path

[@@@deriving.end]

type filters__malware_state = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__malware_state) -> ()

let yojson_of_filters__malware_state =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__malware_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__malware_state

[@@@deriving.end]

type filters__malware_type = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__malware_type) -> ()

let yojson_of_filters__malware_type =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__malware_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__malware_type

[@@@deriving.end]

type filters__network_destination_domain = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_destination_domain) -> ()

let yojson_of_filters__network_destination_domain =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_destination_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_destination_domain

[@@@deriving.end]

type filters__network_destination_ipv4 = { cidr : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_destination_ipv4) -> ()

let yojson_of_filters__network_destination_ipv4 =
  (function
   | { cidr = v_cidr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_destination_ipv4 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_destination_ipv4

[@@@deriving.end]

type filters__network_destination_ipv6 = { cidr : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_destination_ipv6) -> ()

let yojson_of_filters__network_destination_ipv6 =
  (function
   | { cidr = v_cidr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_destination_ipv6 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_destination_ipv6

[@@@deriving.end]

type filters__network_destination_port = {
  eq : string prop option; [@option]
  gte : string prop option; [@option]
  lte : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_destination_port) -> ()

let yojson_of_filters__network_destination_port =
  (function
   | { eq = v_eq; gte = v_gte; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__network_destination_port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_destination_port

[@@@deriving.end]

type filters__network_direction = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_direction) -> ()

let yojson_of_filters__network_direction =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_direction -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_direction

[@@@deriving.end]

type filters__network_protocol = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_protocol) -> ()

let yojson_of_filters__network_protocol =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_protocol -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_protocol

[@@@deriving.end]

type filters__network_source_domain = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_source_domain) -> ()

let yojson_of_filters__network_source_domain =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_source_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_source_domain

[@@@deriving.end]

type filters__network_source_ipv4 = { cidr : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_source_ipv4) -> ()

let yojson_of_filters__network_source_ipv4 =
  (function
   | { cidr = v_cidr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_source_ipv4 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_source_ipv4

[@@@deriving.end]

type filters__network_source_ipv6 = { cidr : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_source_ipv6) -> ()

let yojson_of_filters__network_source_ipv6 =
  (function
   | { cidr = v_cidr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_source_ipv6 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_source_ipv6

[@@@deriving.end]

type filters__network_source_mac = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_source_mac) -> ()

let yojson_of_filters__network_source_mac =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__network_source_mac ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_source_mac

[@@@deriving.end]

type filters__network_source_port = {
  eq : string prop option; [@option]
  gte : string prop option; [@option]
  lte : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__network_source_port) -> ()

let yojson_of_filters__network_source_port =
  (function
   | { eq = v_eq; gte = v_gte; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__network_source_port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__network_source_port

[@@@deriving.end]

type filters__note_text = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__note_text) -> ()

let yojson_of_filters__note_text =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__note_text -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__note_text

[@@@deriving.end]

type filters__note_updated_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__note_updated_at__date_range) -> ()

let yojson_of_filters__note_updated_at__date_range =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__note_updated_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__note_updated_at__date_range

[@@@deriving.end]

type filters__note_updated_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : filters__note_updated_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__note_updated_at) -> ()

let yojson_of_filters__note_updated_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__note_updated_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__note_updated_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__note_updated_at

[@@@deriving.end]

type filters__note_updated_by = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__note_updated_by) -> ()

let yojson_of_filters__note_updated_by =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__note_updated_by -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__note_updated_by

[@@@deriving.end]

type filters__process_launched_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__process_launched_at__date_range) -> ()

let yojson_of_filters__process_launched_at__date_range =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__process_launched_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__process_launched_at__date_range

[@@@deriving.end]

type filters__process_launched_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : filters__process_launched_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__process_launched_at) -> ()

let yojson_of_filters__process_launched_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__process_launched_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__process_launched_at ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__process_launched_at

[@@@deriving.end]

type filters__process_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__process_name) -> ()

let yojson_of_filters__process_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__process_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__process_name

[@@@deriving.end]

type filters__process_parent_pid = {
  eq : string prop option; [@option]
  gte : string prop option; [@option]
  lte : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__process_parent_pid) -> ()

let yojson_of_filters__process_parent_pid =
  (function
   | { eq = v_eq; gte = v_gte; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__process_parent_pid ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__process_parent_pid

[@@@deriving.end]

type filters__process_path = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__process_path) -> ()

let yojson_of_filters__process_path =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__process_path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__process_path

[@@@deriving.end]

type filters__process_pid = {
  eq : string prop option; [@option]
  gte : string prop option; [@option]
  lte : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__process_pid) -> ()

let yojson_of_filters__process_pid =
  (function
   | { eq = v_eq; gte = v_gte; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__process_pid -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__process_pid

[@@@deriving.end]

type filters__process_terminated_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__process_terminated_at__date_range) -> ()

let yojson_of_filters__process_terminated_at__date_range =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__process_terminated_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__process_terminated_at__date_range

[@@@deriving.end]

type filters__process_terminated_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : filters__process_terminated_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__process_terminated_at) -> ()

let yojson_of_filters__process_terminated_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__process_terminated_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__process_terminated_at ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__process_terminated_at

[@@@deriving.end]

type filters__product_arn = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__product_arn) -> ()

let yojson_of_filters__product_arn =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__product_arn -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__product_arn

[@@@deriving.end]

type filters__product_fields = {
  comparison : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__product_fields) -> ()

let yojson_of_filters__product_fields =
  (function
   | { comparison = v_comparison; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__product_fields -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__product_fields

[@@@deriving.end]

type filters__product_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__product_name) -> ()

let yojson_of_filters__product_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__product_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__product_name

[@@@deriving.end]

type filters__recommendation_text = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__recommendation_text) -> ()

let yojson_of_filters__recommendation_text =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__recommendation_text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__recommendation_text

[@@@deriving.end]

type filters__record_state = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__record_state) -> ()

let yojson_of_filters__record_state =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__record_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__record_state

[@@@deriving.end]

type filters__related_findings_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__related_findings_id) -> ()

let yojson_of_filters__related_findings_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__related_findings_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__related_findings_id

[@@@deriving.end]

type filters__related_findings_product_arn = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__related_findings_product_arn) -> ()

let yojson_of_filters__related_findings_product_arn =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__related_findings_product_arn ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__related_findings_product_arn

[@@@deriving.end]

type filters__resource_aws_ec2_instance_iam_instance_profile_arn = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       filters__resource_aws_ec2_instance_iam_instance_profile_arn) ->
  ()

let yojson_of_filters__resource_aws_ec2_instance_iam_instance_profile_arn
    =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_iam_instance_profile_arn ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_filters__resource_aws_ec2_instance_iam_instance_profile_arn

[@@@deriving.end]

type filters__resource_aws_ec2_instance_image_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_aws_ec2_instance_image_id) -> ()

let yojson_of_filters__resource_aws_ec2_instance_image_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_image_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_ec2_instance_image_id

[@@@deriving.end]

type filters__resource_aws_ec2_instance_ipv4_addresses = {
  cidr : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__resource_aws_ec2_instance_ipv4_addresses) -> ()

let yojson_of_filters__resource_aws_ec2_instance_ipv4_addresses =
  (function
   | { cidr = v_cidr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_ipv4_addresses ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_ec2_instance_ipv4_addresses

[@@@deriving.end]

type filters__resource_aws_ec2_instance_ipv6_addresses = {
  cidr : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__resource_aws_ec2_instance_ipv6_addresses) -> ()

let yojson_of_filters__resource_aws_ec2_instance_ipv6_addresses =
  (function
   | { cidr = v_cidr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_ipv6_addresses ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_ec2_instance_ipv6_addresses

[@@@deriving.end]

type filters__resource_aws_ec2_instance_key_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_aws_ec2_instance_key_name) -> ()

let yojson_of_filters__resource_aws_ec2_instance_key_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_key_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_ec2_instance_key_name

[@@@deriving.end]

type filters__resource_aws_ec2_instance_launched_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__resource_aws_ec2_instance_launched_at__date_range) ->
  ()

let yojson_of_filters__resource_aws_ec2_instance_launched_at__date_range
    =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_launched_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_filters__resource_aws_ec2_instance_launched_at__date_range

[@@@deriving.end]

type filters__resource_aws_ec2_instance_launched_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range :
    filters__resource_aws_ec2_instance_launched_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__resource_aws_ec2_instance_launched_at) -> ()

let yojson_of_filters__resource_aws_ec2_instance_launched_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_launched_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_launched_at ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_ec2_instance_launched_at

[@@@deriving.end]

type filters__resource_aws_ec2_instance_subnet_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_aws_ec2_instance_subnet_id) -> ()

let yojson_of_filters__resource_aws_ec2_instance_subnet_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_subnet_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_ec2_instance_subnet_id

[@@@deriving.end]

type filters__resource_aws_ec2_instance_type = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_aws_ec2_instance_type) -> ()

let yojson_of_filters__resource_aws_ec2_instance_type =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_ec2_instance_type

[@@@deriving.end]

type filters__resource_aws_ec2_instance_vpc_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_aws_ec2_instance_vpc_id) -> ()

let yojson_of_filters__resource_aws_ec2_instance_vpc_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_ec2_instance_vpc_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_ec2_instance_vpc_id

[@@@deriving.end]

type filters__resource_aws_iam_access_key_created_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       filters__resource_aws_iam_access_key_created_at__date_range) ->
  ()

let yojson_of_filters__resource_aws_iam_access_key_created_at__date_range
    =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_iam_access_key_created_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_filters__resource_aws_iam_access_key_created_at__date_range

[@@@deriving.end]

type filters__resource_aws_iam_access_key_created_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range :
    filters__resource_aws_iam_access_key_created_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__resource_aws_iam_access_key_created_at) -> ()

let yojson_of_filters__resource_aws_iam_access_key_created_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_iam_access_key_created_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_iam_access_key_created_at ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_iam_access_key_created_at

[@@@deriving.end]

type filters__resource_aws_iam_access_key_status = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_aws_iam_access_key_status) -> ()

let yojson_of_filters__resource_aws_iam_access_key_status =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_iam_access_key_status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_iam_access_key_status

[@@@deriving.end]

type filters__resource_aws_iam_access_key_user_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__resource_aws_iam_access_key_user_name) -> ()

let yojson_of_filters__resource_aws_iam_access_key_user_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_iam_access_key_user_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_iam_access_key_user_name

[@@@deriving.end]

type filters__resource_aws_s3_bucket_owner_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_aws_s3_bucket_owner_id) -> ()

let yojson_of_filters__resource_aws_s3_bucket_owner_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_s3_bucket_owner_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_s3_bucket_owner_id

[@@@deriving.end]

type filters__resource_aws_s3_bucket_owner_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_aws_s3_bucket_owner_name) -> ()

let yojson_of_filters__resource_aws_s3_bucket_owner_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_aws_s3_bucket_owner_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_aws_s3_bucket_owner_name

[@@@deriving.end]

type filters__resource_container_image_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_container_image_id) -> ()

let yojson_of_filters__resource_container_image_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_container_image_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_container_image_id

[@@@deriving.end]

type filters__resource_container_image_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_container_image_name) -> ()

let yojson_of_filters__resource_container_image_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_container_image_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_container_image_name

[@@@deriving.end]

type filters__resource_container_launched_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__resource_container_launched_at__date_range) -> ()

let yojson_of_filters__resource_container_launched_at__date_range =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_container_launched_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_container_launched_at__date_range

[@@@deriving.end]

type filters__resource_container_launched_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range :
    filters__resource_container_launched_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_container_launched_at) -> ()

let yojson_of_filters__resource_container_launched_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_container_launched_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__resource_container_launched_at ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_container_launched_at

[@@@deriving.end]

type filters__resource_container_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_container_name) -> ()

let yojson_of_filters__resource_container_name =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_container_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_container_name

[@@@deriving.end]

type filters__resource_details_other = {
  comparison : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_details_other) -> ()

let yojson_of_filters__resource_details_other =
  (function
   | { comparison = v_comparison; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_details_other ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_details_other

[@@@deriving.end]

type filters__resource_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_id) -> ()

let yojson_of_filters__resource_id =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_id

[@@@deriving.end]

type filters__resource_partition = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_partition) -> ()

let yojson_of_filters__resource_partition =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_partition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_partition

[@@@deriving.end]

type filters__resource_region = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_region) -> ()

let yojson_of_filters__resource_region =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_region

[@@@deriving.end]

type filters__resource_tags = {
  comparison : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_tags) -> ()

let yojson_of_filters__resource_tags =
  (function
   | { comparison = v_comparison; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_tags

[@@@deriving.end]

type filters__resource_type = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__resource_type) -> ()

let yojson_of_filters__resource_type =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__resource_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__resource_type

[@@@deriving.end]

type filters__severity_label = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__severity_label) -> ()

let yojson_of_filters__severity_label =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__severity_label -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__severity_label

[@@@deriving.end]

type filters__source_url = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__source_url) -> ()

let yojson_of_filters__source_url =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__source_url -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__source_url

[@@@deriving.end]

type filters__threat_intel_indicator_category = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__threat_intel_indicator_category) -> ()

let yojson_of_filters__threat_intel_indicator_category =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__threat_intel_indicator_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__threat_intel_indicator_category

[@@@deriving.end]

type filters__threat_intel_indicator_last_observed_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       filters__threat_intel_indicator_last_observed_at__date_range) ->
  ()

let yojson_of_filters__threat_intel_indicator_last_observed_at__date_range
    =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__threat_intel_indicator_last_observed_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_filters__threat_intel_indicator_last_observed_at__date_range

[@@@deriving.end]

type filters__threat_intel_indicator_last_observed_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range :
    filters__threat_intel_indicator_last_observed_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : filters__threat_intel_indicator_last_observed_at) -> ()

let yojson_of_filters__threat_intel_indicator_last_observed_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__threat_intel_indicator_last_observed_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__threat_intel_indicator_last_observed_at ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__threat_intel_indicator_last_observed_at

[@@@deriving.end]

type filters__threat_intel_indicator_source = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__threat_intel_indicator_source) -> ()

let yojson_of_filters__threat_intel_indicator_source =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__threat_intel_indicator_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__threat_intel_indicator_source

[@@@deriving.end]

type filters__threat_intel_indicator_source_url = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__threat_intel_indicator_source_url) -> ()

let yojson_of_filters__threat_intel_indicator_source_url =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__threat_intel_indicator_source_url ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__threat_intel_indicator_source_url

[@@@deriving.end]

type filters__threat_intel_indicator_type = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__threat_intel_indicator_type) -> ()

let yojson_of_filters__threat_intel_indicator_type =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__threat_intel_indicator_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__threat_intel_indicator_type

[@@@deriving.end]

type filters__threat_intel_indicator_value = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__threat_intel_indicator_value) -> ()

let yojson_of_filters__threat_intel_indicator_value =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__threat_intel_indicator_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__threat_intel_indicator_value

[@@@deriving.end]

type filters__title = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__title) -> ()

let yojson_of_filters__title =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__title -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__title

[@@@deriving.end]

type filters__type = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__type) -> ()

let yojson_of_filters__type =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__type

[@@@deriving.end]

type filters__updated_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__updated_at__date_range) -> ()

let yojson_of_filters__updated_at__date_range =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : filters__updated_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__updated_at__date_range

[@@@deriving.end]

type filters__updated_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : filters__updated_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__updated_at) -> ()

let yojson_of_filters__updated_at =
  (function
   | { end_ = v_end_; start = v_start; date_range = v_date_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_date_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__updated_at__date_range)
               v_date_range
           in
           let bnd = "date_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters__updated_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__updated_at

[@@@deriving.end]

type filters__user_defined_values = {
  comparison : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__user_defined_values) -> ()

let yojson_of_filters__user_defined_values =
  (function
   | { comparison = v_comparison; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__user_defined_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__user_defined_values

[@@@deriving.end]

type filters__verification_state = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__verification_state) -> ()

let yojson_of_filters__verification_state =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__verification_state ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__verification_state

[@@@deriving.end]

type filters__workflow_status = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters__workflow_status) -> ()

let yojson_of_filters__workflow_status =
  (function
   | { comparison = v_comparison; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : filters__workflow_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters__workflow_status

[@@@deriving.end]

type filters = {
  aws_account_id : filters__aws_account_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  company_name : filters__company_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compliance_status : filters__compliance_status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  confidence : filters__confidence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  created_at : filters__created_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  criticality : filters__criticality list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : filters__description list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  finding_provider_fields_confidence :
    filters__finding_provider_fields_confidence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  finding_provider_fields_criticality :
    filters__finding_provider_fields_criticality list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  finding_provider_fields_related_findings_id :
    filters__finding_provider_fields_related_findings_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  finding_provider_fields_related_findings_product_arn :
    filters__finding_provider_fields_related_findings_product_arn
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  finding_provider_fields_severity_label :
    filters__finding_provider_fields_severity_label list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  finding_provider_fields_severity_original :
    filters__finding_provider_fields_severity_original list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  finding_provider_fields_types :
    filters__finding_provider_fields_types list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  first_observed_at : filters__first_observed_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  generator_id : filters__generator_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : filters__id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  keyword : filters__keyword list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  last_observed_at : filters__last_observed_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  malware_name : filters__malware_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  malware_path : filters__malware_path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  malware_state : filters__malware_state list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  malware_type : filters__malware_type list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_destination_domain :
    filters__network_destination_domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_destination_ipv4 : filters__network_destination_ipv4 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_destination_ipv6 : filters__network_destination_ipv6 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_destination_port : filters__network_destination_port list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_direction : filters__network_direction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_protocol : filters__network_protocol list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_source_domain : filters__network_source_domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_source_ipv4 : filters__network_source_ipv4 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_source_ipv6 : filters__network_source_ipv6 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_source_mac : filters__network_source_mac list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_source_port : filters__network_source_port list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  note_text : filters__note_text list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  note_updated_at : filters__note_updated_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  note_updated_by : filters__note_updated_by list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  process_launched_at : filters__process_launched_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  process_name : filters__process_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  process_parent_pid : filters__process_parent_pid list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  process_path : filters__process_path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  process_pid : filters__process_pid list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  process_terminated_at : filters__process_terminated_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  product_arn : filters__product_arn list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  product_fields : filters__product_fields list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  product_name : filters__product_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recommendation_text : filters__recommendation_text list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  record_state : filters__record_state list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  related_findings_id : filters__related_findings_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  related_findings_product_arn :
    filters__related_findings_product_arn list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_iam_instance_profile_arn :
    filters__resource_aws_ec2_instance_iam_instance_profile_arn list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_image_id :
    filters__resource_aws_ec2_instance_image_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_ipv4_addresses :
    filters__resource_aws_ec2_instance_ipv4_addresses list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_ipv6_addresses :
    filters__resource_aws_ec2_instance_ipv6_addresses list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_key_name :
    filters__resource_aws_ec2_instance_key_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_launched_at :
    filters__resource_aws_ec2_instance_launched_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_subnet_id :
    filters__resource_aws_ec2_instance_subnet_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_type :
    filters__resource_aws_ec2_instance_type list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_ec2_instance_vpc_id :
    filters__resource_aws_ec2_instance_vpc_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_iam_access_key_created_at :
    filters__resource_aws_iam_access_key_created_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_iam_access_key_status :
    filters__resource_aws_iam_access_key_status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_iam_access_key_user_name :
    filters__resource_aws_iam_access_key_user_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_s3_bucket_owner_id :
    filters__resource_aws_s3_bucket_owner_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_aws_s3_bucket_owner_name :
    filters__resource_aws_s3_bucket_owner_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_container_image_id :
    filters__resource_container_image_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_container_image_name :
    filters__resource_container_image_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_container_launched_at :
    filters__resource_container_launched_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_container_name : filters__resource_container_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_details_other : filters__resource_details_other list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_id : filters__resource_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_partition : filters__resource_partition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_region : filters__resource_region list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_tags : filters__resource_tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_type : filters__resource_type list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  severity_label : filters__severity_label list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_url : filters__source_url list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threat_intel_indicator_category :
    filters__threat_intel_indicator_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threat_intel_indicator_last_observed_at :
    filters__threat_intel_indicator_last_observed_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threat_intel_indicator_source :
    filters__threat_intel_indicator_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threat_intel_indicator_source_url :
    filters__threat_intel_indicator_source_url list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threat_intel_indicator_type :
    filters__threat_intel_indicator_type list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threat_intel_indicator_value :
    filters__threat_intel_indicator_value list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  title : filters__title list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : filters__type list;
      [@key "type"] [@default []] [@yojson_drop_default Stdlib.( = )]
  updated_at : filters__updated_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_defined_values : filters__user_defined_values list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  verification_state : filters__verification_state list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workflow_status : filters__workflow_status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters) -> ()

let yojson_of_filters =
  (function
   | {
       aws_account_id = v_aws_account_id;
       company_name = v_company_name;
       compliance_status = v_compliance_status;
       confidence = v_confidence;
       created_at = v_created_at;
       criticality = v_criticality;
       description = v_description;
       finding_provider_fields_confidence =
         v_finding_provider_fields_confidence;
       finding_provider_fields_criticality =
         v_finding_provider_fields_criticality;
       finding_provider_fields_related_findings_id =
         v_finding_provider_fields_related_findings_id;
       finding_provider_fields_related_findings_product_arn =
         v_finding_provider_fields_related_findings_product_arn;
       finding_provider_fields_severity_label =
         v_finding_provider_fields_severity_label;
       finding_provider_fields_severity_original =
         v_finding_provider_fields_severity_original;
       finding_provider_fields_types =
         v_finding_provider_fields_types;
       first_observed_at = v_first_observed_at;
       generator_id = v_generator_id;
       id = v_id;
       keyword = v_keyword;
       last_observed_at = v_last_observed_at;
       malware_name = v_malware_name;
       malware_path = v_malware_path;
       malware_state = v_malware_state;
       malware_type = v_malware_type;
       network_destination_domain = v_network_destination_domain;
       network_destination_ipv4 = v_network_destination_ipv4;
       network_destination_ipv6 = v_network_destination_ipv6;
       network_destination_port = v_network_destination_port;
       network_direction = v_network_direction;
       network_protocol = v_network_protocol;
       network_source_domain = v_network_source_domain;
       network_source_ipv4 = v_network_source_ipv4;
       network_source_ipv6 = v_network_source_ipv6;
       network_source_mac = v_network_source_mac;
       network_source_port = v_network_source_port;
       note_text = v_note_text;
       note_updated_at = v_note_updated_at;
       note_updated_by = v_note_updated_by;
       process_launched_at = v_process_launched_at;
       process_name = v_process_name;
       process_parent_pid = v_process_parent_pid;
       process_path = v_process_path;
       process_pid = v_process_pid;
       process_terminated_at = v_process_terminated_at;
       product_arn = v_product_arn;
       product_fields = v_product_fields;
       product_name = v_product_name;
       recommendation_text = v_recommendation_text;
       record_state = v_record_state;
       related_findings_id = v_related_findings_id;
       related_findings_product_arn = v_related_findings_product_arn;
       resource_aws_ec2_instance_iam_instance_profile_arn =
         v_resource_aws_ec2_instance_iam_instance_profile_arn;
       resource_aws_ec2_instance_image_id =
         v_resource_aws_ec2_instance_image_id;
       resource_aws_ec2_instance_ipv4_addresses =
         v_resource_aws_ec2_instance_ipv4_addresses;
       resource_aws_ec2_instance_ipv6_addresses =
         v_resource_aws_ec2_instance_ipv6_addresses;
       resource_aws_ec2_instance_key_name =
         v_resource_aws_ec2_instance_key_name;
       resource_aws_ec2_instance_launched_at =
         v_resource_aws_ec2_instance_launched_at;
       resource_aws_ec2_instance_subnet_id =
         v_resource_aws_ec2_instance_subnet_id;
       resource_aws_ec2_instance_type =
         v_resource_aws_ec2_instance_type;
       resource_aws_ec2_instance_vpc_id =
         v_resource_aws_ec2_instance_vpc_id;
       resource_aws_iam_access_key_created_at =
         v_resource_aws_iam_access_key_created_at;
       resource_aws_iam_access_key_status =
         v_resource_aws_iam_access_key_status;
       resource_aws_iam_access_key_user_name =
         v_resource_aws_iam_access_key_user_name;
       resource_aws_s3_bucket_owner_id =
         v_resource_aws_s3_bucket_owner_id;
       resource_aws_s3_bucket_owner_name =
         v_resource_aws_s3_bucket_owner_name;
       resource_container_image_id = v_resource_container_image_id;
       resource_container_image_name =
         v_resource_container_image_name;
       resource_container_launched_at =
         v_resource_container_launched_at;
       resource_container_name = v_resource_container_name;
       resource_details_other = v_resource_details_other;
       resource_id = v_resource_id;
       resource_partition = v_resource_partition;
       resource_region = v_resource_region;
       resource_tags = v_resource_tags;
       resource_type = v_resource_type;
       severity_label = v_severity_label;
       source_url = v_source_url;
       threat_intel_indicator_category =
         v_threat_intel_indicator_category;
       threat_intel_indicator_last_observed_at =
         v_threat_intel_indicator_last_observed_at;
       threat_intel_indicator_source =
         v_threat_intel_indicator_source;
       threat_intel_indicator_source_url =
         v_threat_intel_indicator_source_url;
       threat_intel_indicator_type = v_threat_intel_indicator_type;
       threat_intel_indicator_value = v_threat_intel_indicator_value;
       title = v_title;
       type_ = v_type_;
       updated_at = v_updated_at;
       user_defined_values = v_user_defined_values;
       verification_state = v_verification_state;
       workflow_status = v_workflow_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workflow_status then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__workflow_status)
               v_workflow_status
           in
           let bnd = "workflow_status", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_verification_state then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__verification_state)
               v_verification_state
           in
           let bnd = "verification_state", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_user_defined_values then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__user_defined_values)
               v_user_defined_values
           in
           let bnd = "user_defined_values", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_updated_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__updated_at)
               v_updated_at
           in
           let bnd = "updated_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_type_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__type) v_type_
           in
           let bnd = "type", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_title then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__title) v_title
           in
           let bnd = "title", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_threat_intel_indicator_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__threat_intel_indicator_value)
               v_threat_intel_indicator_value
           in
           let bnd = "threat_intel_indicator_value", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_threat_intel_indicator_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__threat_intel_indicator_type)
               v_threat_intel_indicator_type
           in
           let bnd = "threat_intel_indicator_type", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_threat_intel_indicator_source_url then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__threat_intel_indicator_source_url)
               v_threat_intel_indicator_source_url
           in
           let bnd = "threat_intel_indicator_source_url", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_threat_intel_indicator_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__threat_intel_indicator_source)
               v_threat_intel_indicator_source
           in
           let bnd = "threat_intel_indicator_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_threat_intel_indicator_last_observed_at
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__threat_intel_indicator_last_observed_at)
               v_threat_intel_indicator_last_observed_at
           in
           let bnd =
             "threat_intel_indicator_last_observed_at", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_threat_intel_indicator_category then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__threat_intel_indicator_category)
               v_threat_intel_indicator_category
           in
           let bnd = "threat_intel_indicator_category", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_url then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__source_url)
               v_source_url
           in
           let bnd = "source_url", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_severity_label then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__severity_label)
               v_severity_label
           in
           let bnd = "severity_label", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_type then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__resource_type)
               v_resource_type
           in
           let bnd = "resource_type", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__resource_tags)
               v_resource_tags
           in
           let bnd = "resource_tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_region then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__resource_region)
               v_resource_region
           in
           let bnd = "resource_region", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_partition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__resource_partition)
               v_resource_partition
           in
           let bnd = "resource_partition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__resource_id)
               v_resource_id
           in
           let bnd = "resource_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_details_other then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_details_other)
               v_resource_details_other
           in
           let bnd = "resource_details_other", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_container_name then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_container_name)
               v_resource_container_name
           in
           let bnd = "resource_container_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_container_launched_at then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_container_launched_at)
               v_resource_container_launched_at
           in
           let bnd = "resource_container_launched_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_container_image_name then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_container_image_name)
               v_resource_container_image_name
           in
           let bnd = "resource_container_image_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_container_image_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_container_image_id)
               v_resource_container_image_id
           in
           let bnd = "resource_container_image_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_s3_bucket_owner_name then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_s3_bucket_owner_name)
               v_resource_aws_s3_bucket_owner_name
           in
           let bnd = "resource_aws_s3_bucket_owner_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_s3_bucket_owner_id then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_s3_bucket_owner_id)
               v_resource_aws_s3_bucket_owner_id
           in
           let bnd = "resource_aws_s3_bucket_owner_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_iam_access_key_user_name
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_iam_access_key_user_name)
               v_resource_aws_iam_access_key_user_name
           in
           let bnd = "resource_aws_iam_access_key_user_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_iam_access_key_status then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_iam_access_key_status)
               v_resource_aws_iam_access_key_status
           in
           let bnd = "resource_aws_iam_access_key_status", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_iam_access_key_created_at
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_iam_access_key_created_at)
               v_resource_aws_iam_access_key_created_at
           in
           let bnd = "resource_aws_iam_access_key_created_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_ec2_instance_vpc_id then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_vpc_id)
               v_resource_aws_ec2_instance_vpc_id
           in
           let bnd = "resource_aws_ec2_instance_vpc_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_ec2_instance_type then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_type)
               v_resource_aws_ec2_instance_type
           in
           let bnd = "resource_aws_ec2_instance_type", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_ec2_instance_subnet_id
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_subnet_id)
               v_resource_aws_ec2_instance_subnet_id
           in
           let bnd = "resource_aws_ec2_instance_subnet_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_ec2_instance_launched_at
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_launched_at)
               v_resource_aws_ec2_instance_launched_at
           in
           let bnd = "resource_aws_ec2_instance_launched_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_ec2_instance_key_name then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_key_name)
               v_resource_aws_ec2_instance_key_name
           in
           let bnd = "resource_aws_ec2_instance_key_name", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) [] v_resource_aws_ec2_instance_ipv6_addresses
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_ipv6_addresses)
               v_resource_aws_ec2_instance_ipv6_addresses
           in
           let bnd =
             "resource_aws_ec2_instance_ipv6_addresses", arg
           in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) [] v_resource_aws_ec2_instance_ipv4_addresses
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_ipv4_addresses)
               v_resource_aws_ec2_instance_ipv4_addresses
           in
           let bnd =
             "resource_aws_ec2_instance_ipv4_addresses", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_aws_ec2_instance_image_id then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_image_id)
               v_resource_aws_ec2_instance_image_id
           in
           let bnd = "resource_aws_ec2_instance_image_id", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_resource_aws_ec2_instance_iam_instance_profile_arn
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__resource_aws_ec2_instance_iam_instance_profile_arn)
               v_resource_aws_ec2_instance_iam_instance_profile_arn
           in
           let bnd =
             ( "resource_aws_ec2_instance_iam_instance_profile_arn",
               arg )
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_related_findings_product_arn then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__related_findings_product_arn)
               v_related_findings_product_arn
           in
           let bnd = "related_findings_product_arn", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_related_findings_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__related_findings_id)
               v_related_findings_id
           in
           let bnd = "related_findings_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_record_state then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__record_state)
               v_record_state
           in
           let bnd = "record_state", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_recommendation_text then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__recommendation_text)
               v_recommendation_text
           in
           let bnd = "recommendation_text", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_product_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__product_name)
               v_product_name
           in
           let bnd = "product_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_product_fields then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__product_fields)
               v_product_fields
           in
           let bnd = "product_fields", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_product_arn then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__product_arn)
               v_product_arn
           in
           let bnd = "product_arn", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_process_terminated_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__process_terminated_at)
               v_process_terminated_at
           in
           let bnd = "process_terminated_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_process_pid then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__process_pid)
               v_process_pid
           in
           let bnd = "process_pid", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_process_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__process_path)
               v_process_path
           in
           let bnd = "process_path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_process_parent_pid then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__process_parent_pid)
               v_process_parent_pid
           in
           let bnd = "process_parent_pid", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_process_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__process_name)
               v_process_name
           in
           let bnd = "process_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_process_launched_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__process_launched_at)
               v_process_launched_at
           in
           let bnd = "process_launched_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_note_updated_by then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__note_updated_by)
               v_note_updated_by
           in
           let bnd = "note_updated_by", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_note_updated_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__note_updated_at)
               v_note_updated_at
           in
           let bnd = "note_updated_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_note_text then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__note_text)
               v_note_text
           in
           let bnd = "note_text", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_source_port then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__network_source_port)
               v_network_source_port
           in
           let bnd = "network_source_port", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_source_mac then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__network_source_mac)
               v_network_source_mac
           in
           let bnd = "network_source_mac", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_source_ipv6 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__network_source_ipv6)
               v_network_source_ipv6
           in
           let bnd = "network_source_ipv6", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_source_ipv4 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__network_source_ipv4)
               v_network_source_ipv4
           in
           let bnd = "network_source_ipv4", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_source_domain then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__network_source_domain)
               v_network_source_domain
           in
           let bnd = "network_source_domain", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_protocol then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__network_protocol)
               v_network_protocol
           in
           let bnd = "network_protocol", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_direction then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__network_direction)
               v_network_direction
           in
           let bnd = "network_direction", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_destination_port then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__network_destination_port)
               v_network_destination_port
           in
           let bnd = "network_destination_port", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_destination_ipv6 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__network_destination_ipv6)
               v_network_destination_ipv6
           in
           let bnd = "network_destination_ipv6", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_destination_ipv4 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__network_destination_ipv4)
               v_network_destination_ipv4
           in
           let bnd = "network_destination_ipv4", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_destination_domain then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__network_destination_domain)
               v_network_destination_domain
           in
           let bnd = "network_destination_domain", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_malware_type then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__malware_type)
               v_malware_type
           in
           let bnd = "malware_type", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_malware_state then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__malware_state)
               v_malware_state
           in
           let bnd = "malware_state", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_malware_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__malware_path)
               v_malware_path
           in
           let bnd = "malware_path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_malware_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__malware_name)
               v_malware_name
           in
           let bnd = "malware_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_last_observed_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__last_observed_at)
               v_last_observed_at
           in
           let bnd = "last_observed_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_keyword then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__keyword) v_keyword
           in
           let bnd = "keyword", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_id then bnds
         else
           let arg = (yojson_of_list yojson_of_filters__id) v_id in
           let bnd = "id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_generator_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__generator_id)
               v_generator_id
           in
           let bnd = "generator_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_first_observed_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__first_observed_at)
               v_first_observed_at
           in
           let bnd = "first_observed_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_finding_provider_fields_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__finding_provider_fields_types)
               v_finding_provider_fields_types
           in
           let bnd = "finding_provider_fields_types", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_finding_provider_fields_severity_original
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__finding_provider_fields_severity_original)
               v_finding_provider_fields_severity_original
           in
           let bnd =
             "finding_provider_fields_severity_original", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_finding_provider_fields_severity_label
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__finding_provider_fields_severity_label)
               v_finding_provider_fields_severity_label
           in
           let bnd = "finding_provider_fields_severity_label", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_finding_provider_fields_related_findings_product_arn
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__finding_provider_fields_related_findings_product_arn)
               v_finding_provider_fields_related_findings_product_arn
           in
           let bnd =
             ( "finding_provider_fields_related_findings_product_arn",
               arg )
           in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_finding_provider_fields_related_findings_id
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__finding_provider_fields_related_findings_id)
               v_finding_provider_fields_related_findings_id
           in
           let bnd =
             "finding_provider_fields_related_findings_id", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_finding_provider_fields_criticality
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__finding_provider_fields_criticality)
               v_finding_provider_fields_criticality
           in
           let bnd = "finding_provider_fields_criticality", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_finding_provider_fields_confidence then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_filters__finding_provider_fields_confidence)
               v_finding_provider_fields_confidence
           in
           let bnd = "finding_provider_fields_confidence", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_description then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__description)
               v_description
           in
           let bnd = "description", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_criticality then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__criticality)
               v_criticality
           in
           let bnd = "criticality", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_created_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__created_at)
               v_created_at
           in
           let bnd = "created_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_confidence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__confidence)
               v_confidence
           in
           let bnd = "confidence", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_compliance_status then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__compliance_status)
               v_compliance_status
           in
           let bnd = "compliance_status", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_company_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__company_name)
               v_company_name
           in
           let bnd = "company_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aws_account_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filters__aws_account_id)
               v_aws_account_id
           in
           let bnd = "aws_account_id", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters

[@@@deriving.end]

type aws_securityhub_insight = {
  group_by_attribute : string prop;
  id : string prop option; [@option]
  name : string prop;
  filters : filters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_insight) -> ()

let yojson_of_aws_securityhub_insight =
  (function
   | {
       group_by_attribute = v_group_by_attribute;
       id = v_id;
       name = v_name;
       filters = v_filters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filters then bnds
         else
           let arg = (yojson_of_list yojson_of_filters) v_filters in
           let bnd = "filters", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_group_by_attribute
         in
         ("group_by_attribute", arg) :: bnds
       in
       `Assoc bnds
    : aws_securityhub_insight -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_insight

[@@@deriving.end]

let filters__aws_account_id ~comparison ~value () :
    filters__aws_account_id =
  { comparison; value }

let filters__company_name ~comparison ~value () :
    filters__company_name =
  { comparison; value }

let filters__compliance_status ~comparison ~value () :
    filters__compliance_status =
  { comparison; value }

let filters__confidence ?eq ?gte ?lte () : filters__confidence =
  { eq; gte; lte }

let filters__created_at__date_range ~unit ~value () :
    filters__created_at__date_range =
  { unit; value }

let filters__created_at ?end_ ?start ?(date_range = []) () :
    filters__created_at =
  { end_; start; date_range }

let filters__criticality ?eq ?gte ?lte () : filters__criticality =
  { eq; gte; lte }

let filters__description ~comparison ~value () : filters__description
    =
  { comparison; value }

let filters__finding_provider_fields_confidence ?eq ?gte ?lte () :
    filters__finding_provider_fields_confidence =
  { eq; gte; lte }

let filters__finding_provider_fields_criticality ?eq ?gte ?lte () :
    filters__finding_provider_fields_criticality =
  { eq; gte; lte }

let filters__finding_provider_fields_related_findings_id ~comparison
    ~value () : filters__finding_provider_fields_related_findings_id
    =
  { comparison; value }

let filters__finding_provider_fields_related_findings_product_arn
    ~comparison ~value () :
    filters__finding_provider_fields_related_findings_product_arn =
  { comparison; value }

let filters__finding_provider_fields_severity_label ~comparison
    ~value () : filters__finding_provider_fields_severity_label =
  { comparison; value }

let filters__finding_provider_fields_severity_original ~comparison
    ~value () : filters__finding_provider_fields_severity_original =
  { comparison; value }

let filters__finding_provider_fields_types ~comparison ~value () :
    filters__finding_provider_fields_types =
  { comparison; value }

let filters__first_observed_at__date_range ~unit ~value () :
    filters__first_observed_at__date_range =
  { unit; value }

let filters__first_observed_at ?end_ ?start ?(date_range = []) () :
    filters__first_observed_at =
  { end_; start; date_range }

let filters__generator_id ~comparison ~value () :
    filters__generator_id =
  { comparison; value }

let filters__id ~comparison ~value () : filters__id =
  { comparison; value }

let filters__keyword ~value () : filters__keyword = { value }

let filters__last_observed_at__date_range ~unit ~value () :
    filters__last_observed_at__date_range =
  { unit; value }

let filters__last_observed_at ?end_ ?start ?(date_range = []) () :
    filters__last_observed_at =
  { end_; start; date_range }

let filters__malware_name ~comparison ~value () :
    filters__malware_name =
  { comparison; value }

let filters__malware_path ~comparison ~value () :
    filters__malware_path =
  { comparison; value }

let filters__malware_state ~comparison ~value () :
    filters__malware_state =
  { comparison; value }

let filters__malware_type ~comparison ~value () :
    filters__malware_type =
  { comparison; value }

let filters__network_destination_domain ~comparison ~value () :
    filters__network_destination_domain =
  { comparison; value }

let filters__network_destination_ipv4 ~cidr () :
    filters__network_destination_ipv4 =
  { cidr }

let filters__network_destination_ipv6 ~cidr () :
    filters__network_destination_ipv6 =
  { cidr }

let filters__network_destination_port ?eq ?gte ?lte () :
    filters__network_destination_port =
  { eq; gte; lte }

let filters__network_direction ~comparison ~value () :
    filters__network_direction =
  { comparison; value }

let filters__network_protocol ~comparison ~value () :
    filters__network_protocol =
  { comparison; value }

let filters__network_source_domain ~comparison ~value () :
    filters__network_source_domain =
  { comparison; value }

let filters__network_source_ipv4 ~cidr () :
    filters__network_source_ipv4 =
  { cidr }

let filters__network_source_ipv6 ~cidr () :
    filters__network_source_ipv6 =
  { cidr }

let filters__network_source_mac ~comparison ~value () :
    filters__network_source_mac =
  { comparison; value }

let filters__network_source_port ?eq ?gte ?lte () :
    filters__network_source_port =
  { eq; gte; lte }

let filters__note_text ~comparison ~value () : filters__note_text =
  { comparison; value }

let filters__note_updated_at__date_range ~unit ~value () :
    filters__note_updated_at__date_range =
  { unit; value }

let filters__note_updated_at ?end_ ?start ?(date_range = []) () :
    filters__note_updated_at =
  { end_; start; date_range }

let filters__note_updated_by ~comparison ~value () :
    filters__note_updated_by =
  { comparison; value }

let filters__process_launched_at__date_range ~unit ~value () :
    filters__process_launched_at__date_range =
  { unit; value }

let filters__process_launched_at ?end_ ?start ?(date_range = []) () :
    filters__process_launched_at =
  { end_; start; date_range }

let filters__process_name ~comparison ~value () :
    filters__process_name =
  { comparison; value }

let filters__process_parent_pid ?eq ?gte ?lte () :
    filters__process_parent_pid =
  { eq; gte; lte }

let filters__process_path ~comparison ~value () :
    filters__process_path =
  { comparison; value }

let filters__process_pid ?eq ?gte ?lte () : filters__process_pid =
  { eq; gte; lte }

let filters__process_terminated_at__date_range ~unit ~value () :
    filters__process_terminated_at__date_range =
  { unit; value }

let filters__process_terminated_at ?end_ ?start ?(date_range = []) ()
    : filters__process_terminated_at =
  { end_; start; date_range }

let filters__product_arn ~comparison ~value () : filters__product_arn
    =
  { comparison; value }

let filters__product_fields ~comparison ~key ~value () :
    filters__product_fields =
  { comparison; key; value }

let filters__product_name ~comparison ~value () :
    filters__product_name =
  { comparison; value }

let filters__recommendation_text ~comparison ~value () :
    filters__recommendation_text =
  { comparison; value }

let filters__record_state ~comparison ~value () :
    filters__record_state =
  { comparison; value }

let filters__related_findings_id ~comparison ~value () :
    filters__related_findings_id =
  { comparison; value }

let filters__related_findings_product_arn ~comparison ~value () :
    filters__related_findings_product_arn =
  { comparison; value }

let filters__resource_aws_ec2_instance_iam_instance_profile_arn
    ~comparison ~value () :
    filters__resource_aws_ec2_instance_iam_instance_profile_arn =
  { comparison; value }

let filters__resource_aws_ec2_instance_image_id ~comparison ~value ()
    : filters__resource_aws_ec2_instance_image_id =
  { comparison; value }

let filters__resource_aws_ec2_instance_ipv4_addresses ~cidr () :
    filters__resource_aws_ec2_instance_ipv4_addresses =
  { cidr }

let filters__resource_aws_ec2_instance_ipv6_addresses ~cidr () :
    filters__resource_aws_ec2_instance_ipv6_addresses =
  { cidr }

let filters__resource_aws_ec2_instance_key_name ~comparison ~value ()
    : filters__resource_aws_ec2_instance_key_name =
  { comparison; value }

let filters__resource_aws_ec2_instance_launched_at__date_range ~unit
    ~value () :
    filters__resource_aws_ec2_instance_launched_at__date_range =
  { unit; value }

let filters__resource_aws_ec2_instance_launched_at ?end_ ?start
    ?(date_range = []) () :
    filters__resource_aws_ec2_instance_launched_at =
  { end_; start; date_range }

let filters__resource_aws_ec2_instance_subnet_id ~comparison ~value
    () : filters__resource_aws_ec2_instance_subnet_id =
  { comparison; value }

let filters__resource_aws_ec2_instance_type ~comparison ~value () :
    filters__resource_aws_ec2_instance_type =
  { comparison; value }

let filters__resource_aws_ec2_instance_vpc_id ~comparison ~value () :
    filters__resource_aws_ec2_instance_vpc_id =
  { comparison; value }

let filters__resource_aws_iam_access_key_created_at__date_range ~unit
    ~value () :
    filters__resource_aws_iam_access_key_created_at__date_range =
  { unit; value }

let filters__resource_aws_iam_access_key_created_at ?end_ ?start
    ?(date_range = []) () :
    filters__resource_aws_iam_access_key_created_at =
  { end_; start; date_range }

let filters__resource_aws_iam_access_key_status ~comparison ~value ()
    : filters__resource_aws_iam_access_key_status =
  { comparison; value }

let filters__resource_aws_iam_access_key_user_name ~comparison ~value
    () : filters__resource_aws_iam_access_key_user_name =
  { comparison; value }

let filters__resource_aws_s3_bucket_owner_id ~comparison ~value () :
    filters__resource_aws_s3_bucket_owner_id =
  { comparison; value }

let filters__resource_aws_s3_bucket_owner_name ~comparison ~value ()
    : filters__resource_aws_s3_bucket_owner_name =
  { comparison; value }

let filters__resource_container_image_id ~comparison ~value () :
    filters__resource_container_image_id =
  { comparison; value }

let filters__resource_container_image_name ~comparison ~value () :
    filters__resource_container_image_name =
  { comparison; value }

let filters__resource_container_launched_at__date_range ~unit ~value
    () : filters__resource_container_launched_at__date_range =
  { unit; value }

let filters__resource_container_launched_at ?end_ ?start
    ?(date_range = []) () : filters__resource_container_launched_at =
  { end_; start; date_range }

let filters__resource_container_name ~comparison ~value () :
    filters__resource_container_name =
  { comparison; value }

let filters__resource_details_other ~comparison ~key ~value () :
    filters__resource_details_other =
  { comparison; key; value }

let filters__resource_id ~comparison ~value () : filters__resource_id
    =
  { comparison; value }

let filters__resource_partition ~comparison ~value () :
    filters__resource_partition =
  { comparison; value }

let filters__resource_region ~comparison ~value () :
    filters__resource_region =
  { comparison; value }

let filters__resource_tags ~comparison ~key ~value () :
    filters__resource_tags =
  { comparison; key; value }

let filters__resource_type ~comparison ~value () :
    filters__resource_type =
  { comparison; value }

let filters__severity_label ~comparison ~value () :
    filters__severity_label =
  { comparison; value }

let filters__source_url ~comparison ~value () : filters__source_url =
  { comparison; value }

let filters__threat_intel_indicator_category ~comparison ~value () :
    filters__threat_intel_indicator_category =
  { comparison; value }

let filters__threat_intel_indicator_last_observed_at__date_range
    ~unit ~value () :
    filters__threat_intel_indicator_last_observed_at__date_range =
  { unit; value }

let filters__threat_intel_indicator_last_observed_at ?end_ ?start
    ?(date_range = []) () :
    filters__threat_intel_indicator_last_observed_at =
  { end_; start; date_range }

let filters__threat_intel_indicator_source ~comparison ~value () :
    filters__threat_intel_indicator_source =
  { comparison; value }

let filters__threat_intel_indicator_source_url ~comparison ~value ()
    : filters__threat_intel_indicator_source_url =
  { comparison; value }

let filters__threat_intel_indicator_type ~comparison ~value () :
    filters__threat_intel_indicator_type =
  { comparison; value }

let filters__threat_intel_indicator_value ~comparison ~value () :
    filters__threat_intel_indicator_value =
  { comparison; value }

let filters__title ~comparison ~value () : filters__title =
  { comparison; value }

let filters__type ~comparison ~value () : filters__type =
  { comparison; value }

let filters__updated_at__date_range ~unit ~value () :
    filters__updated_at__date_range =
  { unit; value }

let filters__updated_at ?end_ ?start ?(date_range = []) () :
    filters__updated_at =
  { end_; start; date_range }

let filters__user_defined_values ~comparison ~key ~value () :
    filters__user_defined_values =
  { comparison; key; value }

let filters__verification_state ~comparison ~value () :
    filters__verification_state =
  { comparison; value }

let filters__workflow_status ~comparison ~value () :
    filters__workflow_status =
  { comparison; value }

let filters ~aws_account_id ~company_name ~compliance_status
    ~confidence ~created_at ~criticality ~description
    ~finding_provider_fields_confidence
    ~finding_provider_fields_criticality
    ~finding_provider_fields_related_findings_id
    ~finding_provider_fields_related_findings_product_arn
    ~finding_provider_fields_severity_label
    ~finding_provider_fields_severity_original
    ~finding_provider_fields_types ~first_observed_at ~generator_id
    ~id ~keyword ~last_observed_at ~malware_name ~malware_path
    ~malware_state ~malware_type ~network_destination_domain
    ~network_destination_ipv4 ~network_destination_ipv6
    ~network_destination_port ~network_direction ~network_protocol
    ~network_source_domain ~network_source_ipv4 ~network_source_ipv6
    ~network_source_mac ~network_source_port ~note_text
    ~note_updated_at ~note_updated_by ~process_launched_at
    ~process_name ~process_parent_pid ~process_path ~process_pid
    ~process_terminated_at ~product_arn ~product_fields ~product_name
    ~recommendation_text ~record_state ~related_findings_id
    ~related_findings_product_arn
    ~resource_aws_ec2_instance_iam_instance_profile_arn
    ~resource_aws_ec2_instance_image_id
    ~resource_aws_ec2_instance_ipv4_addresses
    ~resource_aws_ec2_instance_ipv6_addresses
    ~resource_aws_ec2_instance_key_name
    ~resource_aws_ec2_instance_launched_at
    ~resource_aws_ec2_instance_subnet_id
    ~resource_aws_ec2_instance_type ~resource_aws_ec2_instance_vpc_id
    ~resource_aws_iam_access_key_created_at
    ~resource_aws_iam_access_key_status
    ~resource_aws_iam_access_key_user_name
    ~resource_aws_s3_bucket_owner_id
    ~resource_aws_s3_bucket_owner_name ~resource_container_image_id
    ~resource_container_image_name ~resource_container_launched_at
    ~resource_container_name ~resource_details_other ~resource_id
    ~resource_partition ~resource_region ~resource_tags
    ~resource_type ~severity_label ~source_url
    ~threat_intel_indicator_category
    ~threat_intel_indicator_last_observed_at
    ~threat_intel_indicator_source ~threat_intel_indicator_source_url
    ~threat_intel_indicator_type ~threat_intel_indicator_value ~title
    ~type_ ~updated_at ~user_defined_values ~verification_state
    ~workflow_status () : filters =
  {
    aws_account_id;
    company_name;
    compliance_status;
    confidence;
    created_at;
    criticality;
    description;
    finding_provider_fields_confidence;
    finding_provider_fields_criticality;
    finding_provider_fields_related_findings_id;
    finding_provider_fields_related_findings_product_arn;
    finding_provider_fields_severity_label;
    finding_provider_fields_severity_original;
    finding_provider_fields_types;
    first_observed_at;
    generator_id;
    id;
    keyword;
    last_observed_at;
    malware_name;
    malware_path;
    malware_state;
    malware_type;
    network_destination_domain;
    network_destination_ipv4;
    network_destination_ipv6;
    network_destination_port;
    network_direction;
    network_protocol;
    network_source_domain;
    network_source_ipv4;
    network_source_ipv6;
    network_source_mac;
    network_source_port;
    note_text;
    note_updated_at;
    note_updated_by;
    process_launched_at;
    process_name;
    process_parent_pid;
    process_path;
    process_pid;
    process_terminated_at;
    product_arn;
    product_fields;
    product_name;
    recommendation_text;
    record_state;
    related_findings_id;
    related_findings_product_arn;
    resource_aws_ec2_instance_iam_instance_profile_arn;
    resource_aws_ec2_instance_image_id;
    resource_aws_ec2_instance_ipv4_addresses;
    resource_aws_ec2_instance_ipv6_addresses;
    resource_aws_ec2_instance_key_name;
    resource_aws_ec2_instance_launched_at;
    resource_aws_ec2_instance_subnet_id;
    resource_aws_ec2_instance_type;
    resource_aws_ec2_instance_vpc_id;
    resource_aws_iam_access_key_created_at;
    resource_aws_iam_access_key_status;
    resource_aws_iam_access_key_user_name;
    resource_aws_s3_bucket_owner_id;
    resource_aws_s3_bucket_owner_name;
    resource_container_image_id;
    resource_container_image_name;
    resource_container_launched_at;
    resource_container_name;
    resource_details_other;
    resource_id;
    resource_partition;
    resource_region;
    resource_tags;
    resource_type;
    severity_label;
    source_url;
    threat_intel_indicator_category;
    threat_intel_indicator_last_observed_at;
    threat_intel_indicator_source;
    threat_intel_indicator_source_url;
    threat_intel_indicator_type;
    threat_intel_indicator_value;
    title;
    type_;
    updated_at;
    user_defined_values;
    verification_state;
    workflow_status;
  }

let aws_securityhub_insight ?id ~group_by_attribute ~name ~filters ()
    : aws_securityhub_insight =
  { group_by_attribute; id; name; filters }

type t = {
  tf_name : string;
  arn : string prop;
  group_by_attribute : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~group_by_attribute ~name ~filters __id =
  let __type = "aws_securityhub_insight" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       group_by_attribute =
         Prop.computed __type __id "group_by_attribute";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_insight
        (aws_securityhub_insight ?id ~group_by_attribute ~name
           ~filters ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_by_attribute ~name ~filters __id =
  let (r : _ Tf_core.resource) =
    make ?id ~group_by_attribute ~name ~filters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
