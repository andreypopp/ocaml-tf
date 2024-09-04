(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type insights_configuration = {
  insights_enabled : bool prop;
  notifications_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : insights_configuration) -> ()

let yojson_of_insights_configuration =
  (function
   | {
       insights_enabled = v_insights_enabled;
       notifications_enabled = v_notifications_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_notifications_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "notifications_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_insights_enabled
         in
         ("insights_enabled", arg) :: bnds
       in
       `Assoc bnds
    : insights_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_insights_configuration

[@@@deriving.end]

type aws_xray_group = {
  filter_expression : string prop;
  group_name : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  insights_configuration : insights_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_xray_group) -> ()

let yojson_of_aws_xray_group =
  (function
   | {
       filter_expression = v_filter_expression;
       group_name = v_group_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       insights_configuration = v_insights_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_insights_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_insights_configuration)
               v_insights_configuration
           in
           let bnd = "insights_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filter_expression
         in
         ("filter_expression", arg) :: bnds
       in
       `Assoc bnds
    : aws_xray_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_xray_group

[@@@deriving.end]

let insights_configuration ?notifications_enabled ~insights_enabled
    () : insights_configuration =
  { insights_enabled; notifications_enabled }

let aws_xray_group ?id ?tags ?tags_all ?(insights_configuration = [])
    ~filter_expression ~group_name () : aws_xray_group =
  {
    filter_expression;
    group_name;
    id;
    tags;
    tags_all;
    insights_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  filter_expression : string prop;
  group_name : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ?(insights_configuration = [])
    ~filter_expression ~group_name __id =
  let __type = "aws_xray_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       filter_expression =
         Prop.computed __type __id "filter_expression";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_xray_group
        (aws_xray_group ?id ?tags ?tags_all ~insights_configuration
           ~filter_expression ~group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(insights_configuration = []) ~filter_expression ~group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~insights_configuration
      ~filter_expression ~group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
