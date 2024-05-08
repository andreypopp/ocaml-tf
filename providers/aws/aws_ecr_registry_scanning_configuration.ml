(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__repository_filter = {
  filter : string prop;
  filter_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__repository_filter) -> ()

let yojson_of_rule__repository_filter =
  (function
   | { filter = v_filter; filter_type = v_filter_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter_type in
         ("filter_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : rule__repository_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__repository_filter

[@@@deriving.end]

type rule = {
  scan_frequency : string prop;
  repository_filter : rule__repository_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       scan_frequency = v_scan_frequency;
       repository_filter = v_repository_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_repository_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__repository_filter)
               v_repository_filter
           in
           let bnd = "repository_filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scan_frequency
         in
         ("scan_frequency", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_ecr_registry_scanning_configuration = {
  id : string prop option; [@option]
  scan_type : string prop;
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_registry_scanning_configuration) -> ()

let yojson_of_aws_ecr_registry_scanning_configuration =
  (function
   | { id = v_id; scan_type = v_scan_type; rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scan_type in
         ("scan_type", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecr_registry_scanning_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_registry_scanning_configuration

[@@@deriving.end]

let rule__repository_filter ~filter ~filter_type () :
    rule__repository_filter =
  { filter; filter_type }

let rule ~scan_frequency ~repository_filter () : rule =
  { scan_frequency; repository_filter }

let aws_ecr_registry_scanning_configuration ?id ~scan_type ~rule () :
    aws_ecr_registry_scanning_configuration =
  { id; scan_type; rule }

type t = {
  tf_name : string;
  id : string prop;
  registry_id : string prop;
  scan_type : string prop;
}

let make ?id ~scan_type ~rule __id =
  let __type = "aws_ecr_registry_scanning_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       registry_id = Prop.computed __type __id "registry_id";
       scan_type = Prop.computed __type __id "scan_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_registry_scanning_configuration
        (aws_ecr_registry_scanning_configuration ?id ~scan_type ~rule
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~scan_type ~rule __id =
  let (r : _ Tf_core.resource) = make ?id ~scan_type ~rule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
