(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type predicates = {
  data_id : string prop;
  negated : bool prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : predicates) -> ()

let yojson_of_predicates =
  (function
   | { data_id = v_data_id; negated = v_negated; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_negated in
         ("negated", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_id in
         ("data_id", arg) :: bnds
       in
       `Assoc bnds
    : predicates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_predicates

[@@@deriving.end]

type aws_waf_rate_based_rule = {
  id : string prop option; [@option]
  metric_name : string prop;
  name : string prop;
  rate_key : string prop;
  rate_limit : float prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  predicates : predicates list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_waf_rate_based_rule) -> ()

let yojson_of_aws_waf_rate_based_rule =
  (function
   | {
       id = v_id;
       metric_name = v_metric_name;
       name = v_name;
       rate_key = v_rate_key;
       rate_limit = v_rate_limit;
       tags = v_tags;
       tags_all = v_tags_all;
       predicates = v_predicates;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_predicates then bnds
         else
           let arg =
             (yojson_of_list yojson_of_predicates) v_predicates
           in
           let bnd = "predicates", arg in
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
         let arg = yojson_of_prop yojson_of_float v_rate_limit in
         ("rate_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rate_key in
         ("rate_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
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
    : aws_waf_rate_based_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_waf_rate_based_rule

[@@@deriving.end]

let predicates ~data_id ~negated ~type_ () : predicates =
  { data_id; negated; type_ }

let aws_waf_rate_based_rule ?id ?tags ?tags_all ~metric_name ~name
    ~rate_key ~rate_limit ~predicates () : aws_waf_rate_based_rule =
  {
    id;
    metric_name;
    name;
    rate_key;
    rate_limit;
    tags;
    tags_all;
    predicates;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  rate_key : string prop;
  rate_limit : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~metric_name ~name ~rate_key ~rate_limit
    ~predicates __id =
  let __type = "aws_waf_rate_based_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       metric_name = Prop.computed __type __id "metric_name";
       name = Prop.computed __type __id "name";
       rate_key = Prop.computed __type __id "rate_key";
       rate_limit = Prop.computed __type __id "rate_limit";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_rate_based_rule
        (aws_waf_rate_based_rule ?id ?tags ?tags_all ~metric_name
           ~name ~rate_key ~rate_limit ~predicates ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~metric_name ~name
    ~rate_key ~rate_limit ~predicates __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~metric_name ~name ~rate_key ~rate_limit
      ~predicates __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
