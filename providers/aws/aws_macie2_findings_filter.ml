(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type finding_criteria__criterion = {
  eq : string prop list option; [@option]
  eq_exact_match : string prop list option; [@option]
  field : string prop;
  gt : string prop option; [@option]
  gte : string prop option; [@option]
  lt : string prop option; [@option]
  lte : string prop option; [@option]
  neq : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : finding_criteria__criterion) -> ()

let yojson_of_finding_criteria__criterion =
  (function
   | {
       eq = v_eq;
       eq_exact_match = v_eq_exact_match;
       field = v_field;
       gt = v_gt;
       gte = v_gte;
       lt = v_lt;
       lte = v_lte;
       neq = v_neq;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_neq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "neq", arg in
             bnd :: bnds
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
         match v_lt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lt", arg in
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
         match v_gt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gt", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field in
         ("field", arg) :: bnds
       in
       let bnds =
         match v_eq_exact_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "eq_exact_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eq with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "eq", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : finding_criteria__criterion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_finding_criteria__criterion

[@@@deriving.end]

type finding_criteria = {
  criterion : finding_criteria__criterion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : finding_criteria) -> ()

let yojson_of_finding_criteria =
  (function
   | { criterion = v_criterion } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_criterion then bnds
         else
           let arg =
             (yojson_of_list yojson_of_finding_criteria__criterion)
               v_criterion
           in
           let bnd = "criterion", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : finding_criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_finding_criteria

[@@@deriving.end]

type aws_macie2_findings_filter = {
  action : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  position : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  finding_criteria : finding_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_macie2_findings_filter) -> ()

let yojson_of_aws_macie2_findings_filter =
  (function
   | {
       action = v_action;
       description = v_description;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       position = v_position;
       tags = v_tags;
       tags_all = v_tags_all;
       finding_criteria = v_finding_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_finding_criteria then bnds
         else
           let arg =
             (yojson_of_list yojson_of_finding_criteria)
               v_finding_criteria
           in
           let bnd = "finding_criteria", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : aws_macie2_findings_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_macie2_findings_filter

[@@@deriving.end]

let finding_criteria__criterion ?eq ?eq_exact_match ?gt ?gte ?lt ?lte
    ?neq ~field () : finding_criteria__criterion =
  { eq; eq_exact_match; field; gt; gte; lt; lte; neq }

let finding_criteria ~criterion () : finding_criteria = { criterion }

let aws_macie2_findings_filter ?description ?id ?name ?name_prefix
    ?position ?tags ?tags_all ~action ~finding_criteria () :
    aws_macie2_findings_filter =
  {
    action;
    description;
    id;
    name;
    name_prefix;
    position;
    tags;
    tags_all;
    finding_criteria;
  }

type t = {
  tf_name : string;
  action : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  position : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?name ?name_prefix ?position ?tags
    ?tags_all ~action ~finding_criteria __id =
  let __type = "aws_macie2_findings_filter" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       position = Prop.computed __type __id "position";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_findings_filter
        (aws_macie2_findings_filter ?description ?id ?name
           ?name_prefix ?position ?tags ?tags_all ~action
           ~finding_criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?name_prefix ?position
    ?tags ?tags_all ~action ~finding_criteria __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?name_prefix ?position ?tags
      ?tags_all ~action ~finding_criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
