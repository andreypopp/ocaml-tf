(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type finding_criteria__criterion = {
  equals : string prop list option; [@option]
  field : string prop;
  greater_than : string prop option; [@option]
  greater_than_or_equal : string prop option; [@option]
  less_than : string prop option; [@option]
  less_than_or_equal : string prop option; [@option]
  not_equals : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : finding_criteria__criterion) -> ()

let yojson_of_finding_criteria__criterion =
  (function
   | {
       equals = v_equals;
       field = v_field;
       greater_than = v_greater_than;
       greater_than_or_equal = v_greater_than_or_equal;
       less_than = v_less_than;
       less_than_or_equal = v_less_than_or_equal;
       not_equals = v_not_equals;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_not_equals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_equals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_less_than_or_equal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "less_than_or_equal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_less_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "less_than", arg in
             bnd :: bnds
       in
       let bnds =
         match v_greater_than_or_equal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "greater_than_or_equal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_greater_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "greater_than", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field in
         ("field", arg) :: bnds
       in
       let bnds =
         match v_equals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "equals", arg in
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

type aws_guardduty_filter = {
  action : string prop;
  description : string prop option; [@option]
  detector_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  rank : float prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  finding_criteria : finding_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_filter) -> ()

let yojson_of_aws_guardduty_filter =
  (function
   | {
       action = v_action;
       description = v_description;
       detector_id = v_detector_id;
       id = v_id;
       name = v_name;
       rank = v_rank;
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
         let arg = yojson_of_prop yojson_of_float v_rank in
         ("rank", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_detector_id in
         ("detector_id", arg) :: bnds
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
    : aws_guardduty_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_filter

[@@@deriving.end]

let finding_criteria__criterion ?equals ?greater_than
    ?greater_than_or_equal ?less_than ?less_than_or_equal ?not_equals
    ~field () : finding_criteria__criterion =
  {
    equals;
    field;
    greater_than;
    greater_than_or_equal;
    less_than;
    less_than_or_equal;
    not_equals;
  }

let finding_criteria ~criterion () : finding_criteria = { criterion }

let aws_guardduty_filter ?description ?id ?tags ?tags_all ~action
    ~detector_id ~name ~rank ~finding_criteria () :
    aws_guardduty_filter =
  {
    action;
    description;
    detector_id;
    id;
    name;
    rank;
    tags;
    tags_all;
    finding_criteria;
  }

type t = {
  tf_name : string;
  action : string prop;
  arn : string prop;
  description : string prop;
  detector_id : string prop;
  id : string prop;
  name : string prop;
  rank : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~action ~detector_id ~name
    ~rank ~finding_criteria __id =
  let __type = "aws_guardduty_filter" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rank = Prop.computed __type __id "rank";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_filter
        (aws_guardduty_filter ?description ?id ?tags ?tags_all
           ~action ~detector_id ~name ~rank ~finding_criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~action
    ~detector_id ~name ~rank ~finding_criteria __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~action ~detector_id ~name
      ~rank ~finding_criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
