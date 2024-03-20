(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_applicationinsights_application = {
  auto_config_enabled : bool prop option; [@option]
  auto_create : bool prop option; [@option]
  cwe_monitor_enabled : bool prop option; [@option]
  grouping_type : string prop option; [@option]
  id : string prop option; [@option]
  ops_center_enabled : bool prop option; [@option]
  ops_item_sns_topic_arn : string prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_applicationinsights_application) -> ()

let yojson_of_aws_applicationinsights_application =
  (function
   | {
       auto_config_enabled = v_auto_config_enabled;
       auto_create = v_auto_create;
       cwe_monitor_enabled = v_cwe_monitor_enabled;
       grouping_type = v_grouping_type;
       id = v_id;
       ops_center_enabled = v_ops_center_enabled;
       ops_item_sns_topic_arn = v_ops_item_sns_topic_arn;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_ops_item_sns_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ops_item_sns_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ops_center_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ops_center_enabled", arg in
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
         match v_grouping_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grouping_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cwe_monitor_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cwe_monitor_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_create", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_config_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_config_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_applicationinsights_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_applicationinsights_application

[@@@deriving.end]

let aws_applicationinsights_application ?auto_config_enabled
    ?auto_create ?cwe_monitor_enabled ?grouping_type ?id
    ?ops_center_enabled ?ops_item_sns_topic_arn ?tags ?tags_all
    ~resource_group_name () : aws_applicationinsights_application =
  {
    auto_config_enabled;
    auto_create;
    cwe_monitor_enabled;
    grouping_type;
    id;
    ops_center_enabled;
    ops_item_sns_topic_arn;
    resource_group_name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  auto_config_enabled : bool prop;
  auto_create : bool prop;
  cwe_monitor_enabled : bool prop;
  grouping_type : string prop;
  id : string prop;
  ops_center_enabled : bool prop;
  ops_item_sns_topic_arn : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?auto_config_enabled ?auto_create ?cwe_monitor_enabled
    ?grouping_type ?id ?ops_center_enabled ?ops_item_sns_topic_arn
    ?tags ?tags_all ~resource_group_name __id =
  let __type = "aws_applicationinsights_application" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_config_enabled =
         Prop.computed __type __id "auto_config_enabled";
       auto_create = Prop.computed __type __id "auto_create";
       cwe_monitor_enabled =
         Prop.computed __type __id "cwe_monitor_enabled";
       grouping_type = Prop.computed __type __id "grouping_type";
       id = Prop.computed __type __id "id";
       ops_center_enabled =
         Prop.computed __type __id "ops_center_enabled";
       ops_item_sns_topic_arn =
         Prop.computed __type __id "ops_item_sns_topic_arn";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_applicationinsights_application
        (aws_applicationinsights_application ?auto_config_enabled
           ?auto_create ?cwe_monitor_enabled ?grouping_type ?id
           ?ops_center_enabled ?ops_item_sns_topic_arn ?tags
           ?tags_all ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_config_enabled ?auto_create
    ?cwe_monitor_enabled ?grouping_type ?id ?ops_center_enabled
    ?ops_item_sns_topic_arn ?tags ?tags_all ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?auto_config_enabled ?auto_create ?cwe_monitor_enabled
      ?grouping_type ?id ?ops_center_enabled ?ops_item_sns_topic_arn
      ?tags ?tags_all ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
