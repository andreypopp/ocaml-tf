(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type activated_rule__action = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : activated_rule__action) -> ()

let yojson_of_activated_rule__action =
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
    : activated_rule__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_activated_rule__action

[@@@deriving.end]

type activated_rule = {
  priority : float prop;
  rule_id : string prop;
  type_ : string prop option; [@option] [@key "type"]
  action : activated_rule__action list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : activated_rule) -> ()

let yojson_of_activated_rule =
  (function
   | {
       priority = v_priority;
       rule_id = v_rule_id;
       type_ = v_type_;
       action = v_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_activated_rule__action)
               v_action
           in
           let bnd = "action", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_id in
         ("rule_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       `Assoc bnds
    : activated_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_activated_rule

[@@@deriving.end]

type aws_wafregional_rule_group = {
  id : string prop option; [@option]
  metric_name : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  activated_rule : activated_rule list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafregional_rule_group) -> ()

let yojson_of_aws_wafregional_rule_group =
  (function
   | {
       id = v_id;
       metric_name = v_metric_name;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       activated_rule = v_activated_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_activated_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_activated_rule)
               v_activated_rule
           in
           let bnd = "activated_rule", arg in
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
    : aws_wafregional_rule_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafregional_rule_group

[@@@deriving.end]

let activated_rule__action ~type_ () : activated_rule__action =
  { type_ }

let activated_rule ?type_ ~priority ~rule_id ~action () :
    activated_rule =
  { priority; rule_id; type_; action }

let aws_wafregional_rule_group ?id ?tags ?tags_all ~metric_name ~name
    ~activated_rule () : aws_wafregional_rule_group =
  { id; metric_name; name; tags; tags_all; activated_rule }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~metric_name ~name ~activated_rule __id
    =
  let __type = "aws_wafregional_rule_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       metric_name = Prop.computed __type __id "metric_name";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafregional_rule_group
        (aws_wafregional_rule_group ?id ?tags ?tags_all ~metric_name
           ~name ~activated_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~metric_name ~name
    ~activated_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~metric_name ~name ~activated_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
