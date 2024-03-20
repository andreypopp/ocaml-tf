(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  contains : string prop list option; [@option]
  criteria : string prop;
  eq : string prop list option; [@option]
  exists : string prop option; [@option]
  neq : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       contains = v_contains;
       criteria = v_criteria;
       eq = v_eq;
       exists = v_exists;
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
         match v_exists with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exists", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_criteria in
         ("criteria", arg) :: bnds
       in
       let bnds =
         match v_contains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "contains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_accessanalyzer_archive_rule = {
  analyzer_name : string prop;
  id : string prop option; [@option]
  rule_name : string prop;
  filter : filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_accessanalyzer_archive_rule) -> ()

let yojson_of_aws_accessanalyzer_archive_rule =
  (function
   | {
       analyzer_name = v_analyzer_name;
       id = v_id;
       rule_name = v_rule_name;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_name in
         ("rule_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_analyzer_name in
         ("analyzer_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_accessanalyzer_archive_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_accessanalyzer_archive_rule

[@@@deriving.end]

let filter ?contains ?eq ?exists ?neq ~criteria () : filter =
  { contains; criteria; eq; exists; neq }

let aws_accessanalyzer_archive_rule ?id ~analyzer_name ~rule_name
    ~filter () : aws_accessanalyzer_archive_rule =
  { analyzer_name; id; rule_name; filter }

type t = {
  analyzer_name : string prop;
  id : string prop;
  rule_name : string prop;
}

let make ?id ~analyzer_name ~rule_name ~filter __id =
  let __type = "aws_accessanalyzer_archive_rule" in
  let __attrs =
    ({
       analyzer_name = Prop.computed __type __id "analyzer_name";
       id = Prop.computed __type __id "id";
       rule_name = Prop.computed __type __id "rule_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_accessanalyzer_archive_rule
        (aws_accessanalyzer_archive_rule ?id ~analyzer_name
           ~rule_name ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~analyzer_name ~rule_name ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ~analyzer_name ~rule_name ~filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
