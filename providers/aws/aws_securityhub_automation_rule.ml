(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type actions__finding_fields_update__note = {
  text : string prop;
  updated_by : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__finding_fields_update__note) -> ()

let yojson_of_actions__finding_fields_update__note =
  (function
   | { text = v_text; updated_by = v_updated_by } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated_by in
         ("updated_by", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       `Assoc bnds
    : actions__finding_fields_update__note ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__finding_fields_update__note

[@@@deriving.end]

type actions__finding_fields_update__related_findings = {
  id : string prop;
  product_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : actions__finding_fields_update__related_findings) -> ()

let yojson_of_actions__finding_fields_update__related_findings =
  (function
   | { id = v_id; product_arn = v_product_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product_arn in
         ("product_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : actions__finding_fields_update__related_findings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__finding_fields_update__related_findings

[@@@deriving.end]

type actions__finding_fields_update__severity = {
  label : string prop option; [@option]
  product : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__finding_fields_update__severity) -> ()

let yojson_of_actions__finding_fields_update__severity =
  (function
   | { label = v_label; product = v_product } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_product with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "product", arg in
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
       `Assoc bnds
    : actions__finding_fields_update__severity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__finding_fields_update__severity

[@@@deriving.end]

type actions__finding_fields_update__workflow = {
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__finding_fields_update__workflow) -> ()

let yojson_of_actions__finding_fields_update__workflow =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__finding_fields_update__workflow ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__finding_fields_update__workflow

[@@@deriving.end]

type actions__finding_fields_update = {
  confidence : float prop option; [@option]
  criticality : float prop option; [@option]
  types : string prop list option; [@option]
  user_defined_fields : string prop Tf_core.assoc option; [@option]
  verification_state : string prop option; [@option]
  note : actions__finding_fields_update__note list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  related_findings :
    actions__finding_fields_update__related_findings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  severity : actions__finding_fields_update__severity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workflow : actions__finding_fields_update__workflow list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__finding_fields_update) -> ()

let yojson_of_actions__finding_fields_update =
  (function
   | {
       confidence = v_confidence;
       criticality = v_criticality;
       types = v_types;
       user_defined_fields = v_user_defined_fields;
       verification_state = v_verification_state;
       note = v_note;
       related_findings = v_related_findings;
       severity = v_severity;
       workflow = v_workflow;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workflow then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__finding_fields_update__workflow)
               v_workflow
           in
           let bnd = "workflow", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_severity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__finding_fields_update__severity)
               v_severity
           in
           let bnd = "severity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_related_findings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__finding_fields_update__related_findings)
               v_related_findings
           in
           let bnd = "related_findings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_note then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__finding_fields_update__note)
               v_note
           in
           let bnd = "note", arg in
           bnd :: bnds
       in
       let bnds =
         match v_verification_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "verification_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_defined_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "user_defined_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_criticality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "criticality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_confidence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "confidence", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__finding_fields_update ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__finding_fields_update

[@@@deriving.end]

type actions = {
  type_ : string prop option; [@option] [@key "type"]
  finding_fields_update : actions__finding_fields_update list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions) -> ()

let yojson_of_actions =
  (function
   | {
       type_ = v_type_;
       finding_fields_update = v_finding_fields_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_finding_fields_update then bnds
         else
           let arg =
             (yojson_of_list yojson_of_actions__finding_fields_update)
               v_finding_fields_update
           in
           let bnd = "finding_fields_update", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions

[@@@deriving.end]

type criteria__aws_account_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__aws_account_id) -> ()

let yojson_of_criteria__aws_account_id =
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
    : criteria__aws_account_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__aws_account_id

[@@@deriving.end]

type criteria__aws_account_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__aws_account_name) -> ()

let yojson_of_criteria__aws_account_name =
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
    : criteria__aws_account_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__aws_account_name

[@@@deriving.end]

type criteria__company_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__company_name) -> ()

let yojson_of_criteria__company_name =
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
    : criteria__company_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__company_name

[@@@deriving.end]

type criteria__compliance_associated_standards_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__compliance_associated_standards_id) -> ()

let yojson_of_criteria__compliance_associated_standards_id =
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
    : criteria__compliance_associated_standards_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__compliance_associated_standards_id

[@@@deriving.end]

type criteria__compliance_security_control_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__compliance_security_control_id) -> ()

let yojson_of_criteria__compliance_security_control_id =
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
    : criteria__compliance_security_control_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__compliance_security_control_id

[@@@deriving.end]

type criteria__compliance_status = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__compliance_status) -> ()

let yojson_of_criteria__compliance_status =
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
    : criteria__compliance_status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__compliance_status

[@@@deriving.end]

type criteria__confidence = {
  eq : float prop option; [@option]
  gt : float prop option; [@option]
  gte : float prop option; [@option]
  lt : float prop option; [@option]
  lte : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__confidence) -> ()

let yojson_of_criteria__confidence =
  (function
   | { eq = v_eq; gt = v_gt; gte = v_gte; lt = v_lt; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : criteria__confidence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__confidence

[@@@deriving.end]

type criteria__created_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__created_at__date_range) -> ()

let yojson_of_criteria__created_at__date_range =
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
    : criteria__created_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__created_at__date_range

[@@@deriving.end]

type criteria__created_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : criteria__created_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__created_at) -> ()

let yojson_of_criteria__created_at =
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
                yojson_of_criteria__created_at__date_range)
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
    : criteria__created_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__created_at

[@@@deriving.end]

type criteria__criticality = {
  eq : float prop option; [@option]
  gt : float prop option; [@option]
  gte : float prop option; [@option]
  lt : float prop option; [@option]
  lte : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__criticality) -> ()

let yojson_of_criteria__criticality =
  (function
   | { eq = v_eq; gt = v_gt; gte = v_gte; lt = v_lt; lte = v_lte } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gte with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gte", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : criteria__criticality -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__criticality

[@@@deriving.end]

type criteria__description = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__description) -> ()

let yojson_of_criteria__description =
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
    : criteria__description -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__description

[@@@deriving.end]

type criteria__first_observed_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__first_observed_at__date_range) -> ()

let yojson_of_criteria__first_observed_at__date_range =
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
    : criteria__first_observed_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__first_observed_at__date_range

[@@@deriving.end]

type criteria__first_observed_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : criteria__first_observed_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__first_observed_at) -> ()

let yojson_of_criteria__first_observed_at =
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
                yojson_of_criteria__first_observed_at__date_range)
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
    : criteria__first_observed_at ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__first_observed_at

[@@@deriving.end]

type criteria__generator_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__generator_id) -> ()

let yojson_of_criteria__generator_id =
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
    : criteria__generator_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__generator_id

[@@@deriving.end]

type criteria__id = { comparison : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__id) -> ()

let yojson_of_criteria__id =
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
    : criteria__id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__id

[@@@deriving.end]

type criteria__last_observed_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__last_observed_at__date_range) -> ()

let yojson_of_criteria__last_observed_at__date_range =
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
    : criteria__last_observed_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__last_observed_at__date_range

[@@@deriving.end]

type criteria__last_observed_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : criteria__last_observed_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__last_observed_at) -> ()

let yojson_of_criteria__last_observed_at =
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
                yojson_of_criteria__last_observed_at__date_range)
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
    : criteria__last_observed_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__last_observed_at

[@@@deriving.end]

type criteria__note_text = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__note_text) -> ()

let yojson_of_criteria__note_text =
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
    : criteria__note_text -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__note_text

[@@@deriving.end]

type criteria__note_updated_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__note_updated_at__date_range) -> ()

let yojson_of_criteria__note_updated_at__date_range =
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
    : criteria__note_updated_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__note_updated_at__date_range

[@@@deriving.end]

type criteria__note_updated_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : criteria__note_updated_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__note_updated_at) -> ()

let yojson_of_criteria__note_updated_at =
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
                yojson_of_criteria__note_updated_at__date_range)
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
    : criteria__note_updated_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__note_updated_at

[@@@deriving.end]

type criteria__note_updated_by = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__note_updated_by) -> ()

let yojson_of_criteria__note_updated_by =
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
    : criteria__note_updated_by -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__note_updated_by

[@@@deriving.end]

type criteria__product_arn = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__product_arn) -> ()

let yojson_of_criteria__product_arn =
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
    : criteria__product_arn -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__product_arn

[@@@deriving.end]

type criteria__product_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__product_name) -> ()

let yojson_of_criteria__product_name =
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
    : criteria__product_name -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__product_name

[@@@deriving.end]

type criteria__record_state = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__record_state) -> ()

let yojson_of_criteria__record_state =
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
    : criteria__record_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__record_state

[@@@deriving.end]

type criteria__related_findings_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__related_findings_id) -> ()

let yojson_of_criteria__related_findings_id =
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
    : criteria__related_findings_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__related_findings_id

[@@@deriving.end]

type criteria__related_findings_product_arn = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__related_findings_product_arn) -> ()

let yojson_of_criteria__related_findings_product_arn =
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
    : criteria__related_findings_product_arn ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__related_findings_product_arn

[@@@deriving.end]

type criteria__resource_application_arn = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_application_arn) -> ()

let yojson_of_criteria__resource_application_arn =
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
    : criteria__resource_application_arn ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_application_arn

[@@@deriving.end]

type criteria__resource_application_name = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_application_name) -> ()

let yojson_of_criteria__resource_application_name =
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
    : criteria__resource_application_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_application_name

[@@@deriving.end]

type criteria__resource_details_other = {
  comparison : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_details_other) -> ()

let yojson_of_criteria__resource_details_other =
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
    : criteria__resource_details_other ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_details_other

[@@@deriving.end]

type criteria__resource_id = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_id) -> ()

let yojson_of_criteria__resource_id =
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
    : criteria__resource_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_id

[@@@deriving.end]

type criteria__resource_partition = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_partition) -> ()

let yojson_of_criteria__resource_partition =
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
    : criteria__resource_partition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_partition

[@@@deriving.end]

type criteria__resource_region = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_region) -> ()

let yojson_of_criteria__resource_region =
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
    : criteria__resource_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_region

[@@@deriving.end]

type criteria__resource_tags = {
  comparison : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_tags) -> ()

let yojson_of_criteria__resource_tags =
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
    : criteria__resource_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_tags

[@@@deriving.end]

type criteria__resource_type = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__resource_type) -> ()

let yojson_of_criteria__resource_type =
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
    : criteria__resource_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__resource_type

[@@@deriving.end]

type criteria__severity_label = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__severity_label) -> ()

let yojson_of_criteria__severity_label =
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
    : criteria__severity_label -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__severity_label

[@@@deriving.end]

type criteria__source_url = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__source_url) -> ()

let yojson_of_criteria__source_url =
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
    : criteria__source_url -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__source_url

[@@@deriving.end]

type criteria__title = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__title) -> ()

let yojson_of_criteria__title =
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
    : criteria__title -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__title

[@@@deriving.end]

type criteria__type = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__type) -> ()

let yojson_of_criteria__type =
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
    : criteria__type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__type

[@@@deriving.end]

type criteria__updated_at__date_range = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__updated_at__date_range) -> ()

let yojson_of_criteria__updated_at__date_range =
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
    : criteria__updated_at__date_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__updated_at__date_range

[@@@deriving.end]

type criteria__updated_at = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
  date_range : criteria__updated_at__date_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__updated_at) -> ()

let yojson_of_criteria__updated_at =
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
                yojson_of_criteria__updated_at__date_range)
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
    : criteria__updated_at -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__updated_at

[@@@deriving.end]

type criteria__user_defined_fields = {
  comparison : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__user_defined_fields) -> ()

let yojson_of_criteria__user_defined_fields =
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
    : criteria__user_defined_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__user_defined_fields

[@@@deriving.end]

type criteria__verification_state = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__verification_state) -> ()

let yojson_of_criteria__verification_state =
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
    : criteria__verification_state ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__verification_state

[@@@deriving.end]

type criteria__workflow_status = {
  comparison : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__workflow_status) -> ()

let yojson_of_criteria__workflow_status =
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
    : criteria__workflow_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__workflow_status

[@@@deriving.end]

type criteria = {
  aws_account_id : criteria__aws_account_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  aws_account_name : criteria__aws_account_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  company_name : criteria__company_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compliance_associated_standards_id :
    criteria__compliance_associated_standards_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compliance_security_control_id :
    criteria__compliance_security_control_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compliance_status : criteria__compliance_status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  confidence : criteria__confidence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  created_at : criteria__created_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  criticality : criteria__criticality list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : criteria__description list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  first_observed_at : criteria__first_observed_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  generator_id : criteria__generator_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : criteria__id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  last_observed_at : criteria__last_observed_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  note_text : criteria__note_text list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  note_updated_at : criteria__note_updated_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  note_updated_by : criteria__note_updated_by list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  product_arn : criteria__product_arn list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  product_name : criteria__product_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  record_state : criteria__record_state list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  related_findings_id : criteria__related_findings_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  related_findings_product_arn :
    criteria__related_findings_product_arn list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_application_arn : criteria__resource_application_arn list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_application_name :
    criteria__resource_application_name list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_details_other : criteria__resource_details_other list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_id : criteria__resource_id list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_partition : criteria__resource_partition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_region : criteria__resource_region list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_tags : criteria__resource_tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_type : criteria__resource_type list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  severity_label : criteria__severity_label list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_url : criteria__source_url list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  title : criteria__title list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : criteria__type list;
      [@key "type"] [@default []] [@yojson_drop_default Stdlib.( = )]
  updated_at : criteria__updated_at list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_defined_fields : criteria__user_defined_fields list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  verification_state : criteria__verification_state list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workflow_status : criteria__workflow_status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria) -> ()

let yojson_of_criteria =
  (function
   | {
       aws_account_id = v_aws_account_id;
       aws_account_name = v_aws_account_name;
       company_name = v_company_name;
       compliance_associated_standards_id =
         v_compliance_associated_standards_id;
       compliance_security_control_id =
         v_compliance_security_control_id;
       compliance_status = v_compliance_status;
       confidence = v_confidence;
       created_at = v_created_at;
       criticality = v_criticality;
       description = v_description;
       first_observed_at = v_first_observed_at;
       generator_id = v_generator_id;
       id = v_id;
       last_observed_at = v_last_observed_at;
       note_text = v_note_text;
       note_updated_at = v_note_updated_at;
       note_updated_by = v_note_updated_by;
       product_arn = v_product_arn;
       product_name = v_product_name;
       record_state = v_record_state;
       related_findings_id = v_related_findings_id;
       related_findings_product_arn = v_related_findings_product_arn;
       resource_application_arn = v_resource_application_arn;
       resource_application_name = v_resource_application_name;
       resource_details_other = v_resource_details_other;
       resource_id = v_resource_id;
       resource_partition = v_resource_partition;
       resource_region = v_resource_region;
       resource_tags = v_resource_tags;
       resource_type = v_resource_type;
       severity_label = v_severity_label;
       source_url = v_source_url;
       title = v_title;
       type_ = v_type_;
       updated_at = v_updated_at;
       user_defined_fields = v_user_defined_fields;
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
             (yojson_of_list yojson_of_criteria__workflow_status)
               v_workflow_status
           in
           let bnd = "workflow_status", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_verification_state then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__verification_state)
               v_verification_state
           in
           let bnd = "verification_state", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_user_defined_fields then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__user_defined_fields)
               v_user_defined_fields
           in
           let bnd = "user_defined_fields", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_updated_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__updated_at)
               v_updated_at
           in
           let bnd = "updated_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_type_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__type) v_type_
           in
           let bnd = "type", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_title then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__title) v_title
           in
           let bnd = "title", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_url then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__source_url)
               v_source_url
           in
           let bnd = "source_url", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_severity_label then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__severity_label)
               v_severity_label
           in
           let bnd = "severity_label", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_type then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__resource_type)
               v_resource_type
           in
           let bnd = "resource_type", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__resource_tags)
               v_resource_tags
           in
           let bnd = "resource_tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_region then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__resource_region)
               v_resource_region
           in
           let bnd = "resource_region", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_partition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__resource_partition)
               v_resource_partition
           in
           let bnd = "resource_partition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__resource_id)
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
                yojson_of_criteria__resource_details_other)
               v_resource_details_other
           in
           let bnd = "resource_details_other", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_application_name then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_criteria__resource_application_name)
               v_resource_application_name
           in
           let bnd = "resource_application_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_application_arn then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_criteria__resource_application_arn)
               v_resource_application_arn
           in
           let bnd = "resource_application_arn", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_related_findings_product_arn then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_criteria__related_findings_product_arn)
               v_related_findings_product_arn
           in
           let bnd = "related_findings_product_arn", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_related_findings_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__related_findings_id)
               v_related_findings_id
           in
           let bnd = "related_findings_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_record_state then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__record_state)
               v_record_state
           in
           let bnd = "record_state", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_product_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__product_name)
               v_product_name
           in
           let bnd = "product_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_product_arn then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__product_arn)
               v_product_arn
           in
           let bnd = "product_arn", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_note_updated_by then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__note_updated_by)
               v_note_updated_by
           in
           let bnd = "note_updated_by", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_note_updated_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__note_updated_at)
               v_note_updated_at
           in
           let bnd = "note_updated_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_note_text then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__note_text)
               v_note_text
           in
           let bnd = "note_text", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_last_observed_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__last_observed_at)
               v_last_observed_at
           in
           let bnd = "last_observed_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_id then bnds
         else
           let arg = (yojson_of_list yojson_of_criteria__id) v_id in
           let bnd = "id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_generator_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__generator_id)
               v_generator_id
           in
           let bnd = "generator_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_first_observed_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__first_observed_at)
               v_first_observed_at
           in
           let bnd = "first_observed_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_description then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__description)
               v_description
           in
           let bnd = "description", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_criticality then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__criticality)
               v_criticality
           in
           let bnd = "criticality", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_created_at then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__created_at)
               v_created_at
           in
           let bnd = "created_at", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_confidence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__confidence)
               v_confidence
           in
           let bnd = "confidence", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_compliance_status then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__compliance_status)
               v_compliance_status
           in
           let bnd = "compliance_status", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_compliance_security_control_id then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_criteria__compliance_security_control_id)
               v_compliance_security_control_id
           in
           let bnd = "compliance_security_control_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_compliance_associated_standards_id then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_criteria__compliance_associated_standards_id)
               v_compliance_associated_standards_id
           in
           let bnd = "compliance_associated_standards_id", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_company_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__company_name)
               v_company_name
           in
           let bnd = "company_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aws_account_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__aws_account_name)
               v_aws_account_name
           in
           let bnd = "aws_account_name", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aws_account_id then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria__aws_account_id)
               v_aws_account_id
           in
           let bnd = "aws_account_id", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria

[@@@deriving.end]

type aws_securityhub_automation_rule = {
  description : string prop;
  is_terminal : bool prop option; [@option]
  rule_name : string prop;
  rule_order : float prop;
  rule_status : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  actions : actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  criteria : criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_automation_rule) -> ()

let yojson_of_aws_securityhub_automation_rule =
  (function
   | {
       description = v_description;
       is_terminal = v_is_terminal;
       rule_name = v_rule_name;
       rule_order = v_rule_order;
       rule_status = v_rule_status;
       tags = v_tags;
       actions = v_actions;
       criteria = v_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_criteria then bnds
         else
           let arg =
             (yojson_of_list yojson_of_criteria) v_criteria
           in
           let bnd = "criteria", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_actions then bnds
         else
           let arg = (yojson_of_list yojson_of_actions) v_actions in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rule_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_order in
         ("rule_order", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_name in
         ("rule_name", arg) :: bnds
       in
       let bnds =
         match v_is_terminal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_terminal", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : aws_securityhub_automation_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_automation_rule

[@@@deriving.end]

let actions__finding_fields_update__note ~text ~updated_by () :
    actions__finding_fields_update__note =
  { text; updated_by }

let actions__finding_fields_update__related_findings ~id ~product_arn
    () : actions__finding_fields_update__related_findings =
  { id; product_arn }

let actions__finding_fields_update__severity ?label ?product () :
    actions__finding_fields_update__severity =
  { label; product }

let actions__finding_fields_update__workflow ?status () :
    actions__finding_fields_update__workflow =
  { status }

let actions__finding_fields_update ?confidence ?criticality ?types
    ?user_defined_fields ?verification_state ?(note = [])
    ?(severity = []) ?(workflow = []) ~related_findings () :
    actions__finding_fields_update =
  {
    confidence;
    criticality;
    types;
    user_defined_fields;
    verification_state;
    note;
    related_findings;
    severity;
    workflow;
  }

let actions ?type_ ?(finding_fields_update = []) () : actions =
  { type_; finding_fields_update }

let criteria__aws_account_id ~comparison ~value () :
    criteria__aws_account_id =
  { comparison; value }

let criteria__aws_account_name ~comparison ~value () :
    criteria__aws_account_name =
  { comparison; value }

let criteria__company_name ~comparison ~value () :
    criteria__company_name =
  { comparison; value }

let criteria__compliance_associated_standards_id ~comparison ~value
    () : criteria__compliance_associated_standards_id =
  { comparison; value }

let criteria__compliance_security_control_id ~comparison ~value () :
    criteria__compliance_security_control_id =
  { comparison; value }

let criteria__compliance_status ~comparison ~value () :
    criteria__compliance_status =
  { comparison; value }

let criteria__confidence ?eq ?gt ?gte ?lt ?lte () :
    criteria__confidence =
  { eq; gt; gte; lt; lte }

let criteria__created_at__date_range ~unit ~value () :
    criteria__created_at__date_range =
  { unit; value }

let criteria__created_at ?end_ ?start ?(date_range = []) () :
    criteria__created_at =
  { end_; start; date_range }

let criteria__criticality ?eq ?gt ?gte ?lt ?lte () :
    criteria__criticality =
  { eq; gt; gte; lt; lte }

let criteria__description ~comparison ~value () :
    criteria__description =
  { comparison; value }

let criteria__first_observed_at__date_range ~unit ~value () :
    criteria__first_observed_at__date_range =
  { unit; value }

let criteria__first_observed_at ?end_ ?start ?(date_range = []) () :
    criteria__first_observed_at =
  { end_; start; date_range }

let criteria__generator_id ~comparison ~value () :
    criteria__generator_id =
  { comparison; value }

let criteria__id ~comparison ~value () : criteria__id =
  { comparison; value }

let criteria__last_observed_at__date_range ~unit ~value () :
    criteria__last_observed_at__date_range =
  { unit; value }

let criteria__last_observed_at ?end_ ?start ?(date_range = []) () :
    criteria__last_observed_at =
  { end_; start; date_range }

let criteria__note_text ~comparison ~value () : criteria__note_text =
  { comparison; value }

let criteria__note_updated_at__date_range ~unit ~value () :
    criteria__note_updated_at__date_range =
  { unit; value }

let criteria__note_updated_at ?end_ ?start ?(date_range = []) () :
    criteria__note_updated_at =
  { end_; start; date_range }

let criteria__note_updated_by ~comparison ~value () :
    criteria__note_updated_by =
  { comparison; value }

let criteria__product_arn ~comparison ~value () :
    criteria__product_arn =
  { comparison; value }

let criteria__product_name ~comparison ~value () :
    criteria__product_name =
  { comparison; value }

let criteria__record_state ~comparison ~value () :
    criteria__record_state =
  { comparison; value }

let criteria__related_findings_id ~comparison ~value () :
    criteria__related_findings_id =
  { comparison; value }

let criteria__related_findings_product_arn ~comparison ~value () :
    criteria__related_findings_product_arn =
  { comparison; value }

let criteria__resource_application_arn ~comparison ~value () :
    criteria__resource_application_arn =
  { comparison; value }

let criteria__resource_application_name ~comparison ~value () :
    criteria__resource_application_name =
  { comparison; value }

let criteria__resource_details_other ~comparison ~key ~value () :
    criteria__resource_details_other =
  { comparison; key; value }

let criteria__resource_id ~comparison ~value () :
    criteria__resource_id =
  { comparison; value }

let criteria__resource_partition ~comparison ~value () :
    criteria__resource_partition =
  { comparison; value }

let criteria__resource_region ~comparison ~value () :
    criteria__resource_region =
  { comparison; value }

let criteria__resource_tags ~comparison ~key ~value () :
    criteria__resource_tags =
  { comparison; key; value }

let criteria__resource_type ~comparison ~value () :
    criteria__resource_type =
  { comparison; value }

let criteria__severity_label ~comparison ~value () :
    criteria__severity_label =
  { comparison; value }

let criteria__source_url ~comparison ~value () : criteria__source_url
    =
  { comparison; value }

let criteria__title ~comparison ~value () : criteria__title =
  { comparison; value }

let criteria__type ~comparison ~value () : criteria__type =
  { comparison; value }

let criteria__updated_at__date_range ~unit ~value () :
    criteria__updated_at__date_range =
  { unit; value }

let criteria__updated_at ?end_ ?start ?(date_range = []) () :
    criteria__updated_at =
  { end_; start; date_range }

let criteria__user_defined_fields ~comparison ~key ~value () :
    criteria__user_defined_fields =
  { comparison; key; value }

let criteria__verification_state ~comparison ~value () :
    criteria__verification_state =
  { comparison; value }

let criteria__workflow_status ~comparison ~value () :
    criteria__workflow_status =
  { comparison; value }

let criteria ~aws_account_id ~aws_account_name ~company_name
    ~compliance_associated_standards_id
    ~compliance_security_control_id ~compliance_status ~confidence
    ~created_at ~criticality ~description ~first_observed_at
    ~generator_id ~id ~last_observed_at ~note_text ~note_updated_at
    ~note_updated_by ~product_arn ~product_name ~record_state
    ~related_findings_id ~related_findings_product_arn
    ~resource_application_arn ~resource_application_name
    ~resource_details_other ~resource_id ~resource_partition
    ~resource_region ~resource_tags ~resource_type ~severity_label
    ~source_url ~title ~type_ ~updated_at ~user_defined_fields
    ~verification_state ~workflow_status () : criteria =
  {
    aws_account_id;
    aws_account_name;
    company_name;
    compliance_associated_standards_id;
    compliance_security_control_id;
    compliance_status;
    confidence;
    created_at;
    criticality;
    description;
    first_observed_at;
    generator_id;
    id;
    last_observed_at;
    note_text;
    note_updated_at;
    note_updated_by;
    product_arn;
    product_name;
    record_state;
    related_findings_id;
    related_findings_product_arn;
    resource_application_arn;
    resource_application_name;
    resource_details_other;
    resource_id;
    resource_partition;
    resource_region;
    resource_tags;
    resource_type;
    severity_label;
    source_url;
    title;
    type_;
    updated_at;
    user_defined_fields;
    verification_state;
    workflow_status;
  }

let aws_securityhub_automation_rule ?is_terminal ?rule_status ?tags
    ?(criteria = []) ~description ~rule_name ~rule_order ~actions ()
    : aws_securityhub_automation_rule =
  {
    description;
    is_terminal;
    rule_name;
    rule_order;
    rule_status;
    tags;
    actions;
    criteria;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  is_terminal : bool prop;
  rule_name : string prop;
  rule_order : float prop;
  rule_status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?is_terminal ?rule_status ?tags ?(criteria = [])
    ~description ~rule_name ~rule_order ~actions __id =
  let __type = "aws_securityhub_automation_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       is_terminal = Prop.computed __type __id "is_terminal";
       rule_name = Prop.computed __type __id "rule_name";
       rule_order = Prop.computed __type __id "rule_order";
       rule_status = Prop.computed __type __id "rule_status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_automation_rule
        (aws_securityhub_automation_rule ?is_terminal ?rule_status
           ?tags ~criteria ~description ~rule_name ~rule_order
           ~actions ());
    attrs = __attrs;
  }

let register ?tf_module ?is_terminal ?rule_status ?tags
    ?(criteria = []) ~description ~rule_name ~rule_order ~actions
    __id =
  let (r : _ Tf_core.resource) =
    make ?is_terminal ?rule_status ?tags ~criteria ~description
      ~rule_name ~rule_order ~actions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
