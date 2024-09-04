(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_eks_addon = {
  addon_name : string prop;
  addon_version : string prop option; [@option]
  cluster_name : string prop;
  configuration_values : string prop option; [@option]
  id : string prop option; [@option]
  preserve : bool prop option; [@option]
  resolve_conflicts : string prop option; [@option]
  resolve_conflicts_on_create : string prop option; [@option]
  resolve_conflicts_on_update : string prop option; [@option]
  service_account_role_arn : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_addon) -> ()

let yojson_of_aws_eks_addon =
  (function
   | {
       addon_name = v_addon_name;
       addon_version = v_addon_version;
       cluster_name = v_cluster_name;
       configuration_values = v_configuration_values;
       id = v_id;
       preserve = v_preserve;
       resolve_conflicts = v_resolve_conflicts;
       resolve_conflicts_on_create = v_resolve_conflicts_on_create;
       resolve_conflicts_on_update = v_resolve_conflicts_on_update;
       service_account_role_arn = v_service_account_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_service_account_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolve_conflicts_on_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolve_conflicts_on_update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolve_conflicts_on_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolve_conflicts_on_create", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolve_conflicts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolve_conflicts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve", arg in
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
         match v_configuration_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_values", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       let bnds =
         match v_addon_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "addon_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_addon_name in
         ("addon_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_eks_addon -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_addon

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_eks_addon ?addon_version ?configuration_values ?id ?preserve
    ?resolve_conflicts ?resolve_conflicts_on_create
    ?resolve_conflicts_on_update ?service_account_role_arn ?tags
    ?tags_all ?timeouts ~addon_name ~cluster_name () : aws_eks_addon
    =
  {
    addon_name;
    addon_version;
    cluster_name;
    configuration_values;
    id;
    preserve;
    resolve_conflicts;
    resolve_conflicts_on_create;
    resolve_conflicts_on_update;
    service_account_role_arn;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  addon_name : string prop;
  addon_version : string prop;
  arn : string prop;
  cluster_name : string prop;
  configuration_values : string prop;
  created_at : string prop;
  id : string prop;
  modified_at : string prop;
  preserve : bool prop;
  resolve_conflicts : string prop;
  resolve_conflicts_on_create : string prop;
  resolve_conflicts_on_update : string prop;
  service_account_role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?addon_version ?configuration_values ?id ?preserve
    ?resolve_conflicts ?resolve_conflicts_on_create
    ?resolve_conflicts_on_update ?service_account_role_arn ?tags
    ?tags_all ?timeouts ~addon_name ~cluster_name __id =
  let __type = "aws_eks_addon" in
  let __attrs =
    ({
       tf_name = __id;
       addon_name = Prop.computed __type __id "addon_name";
       addon_version = Prop.computed __type __id "addon_version";
       arn = Prop.computed __type __id "arn";
       cluster_name = Prop.computed __type __id "cluster_name";
       configuration_values =
         Prop.computed __type __id "configuration_values";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       modified_at = Prop.computed __type __id "modified_at";
       preserve = Prop.computed __type __id "preserve";
       resolve_conflicts =
         Prop.computed __type __id "resolve_conflicts";
       resolve_conflicts_on_create =
         Prop.computed __type __id "resolve_conflicts_on_create";
       resolve_conflicts_on_update =
         Prop.computed __type __id "resolve_conflicts_on_update";
       service_account_role_arn =
         Prop.computed __type __id "service_account_role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_addon
        (aws_eks_addon ?addon_version ?configuration_values ?id
           ?preserve ?resolve_conflicts ?resolve_conflicts_on_create
           ?resolve_conflicts_on_update ?service_account_role_arn
           ?tags ?tags_all ?timeouts ~addon_name ~cluster_name ());
    attrs = __attrs;
  }

let register ?tf_module ?addon_version ?configuration_values ?id
    ?preserve ?resolve_conflicts ?resolve_conflicts_on_create
    ?resolve_conflicts_on_update ?service_account_role_arn ?tags
    ?tags_all ?timeouts ~addon_name ~cluster_name __id =
  let (r : _ Tf_core.resource) =
    make ?addon_version ?configuration_values ?id ?preserve
      ?resolve_conflicts ?resolve_conflicts_on_create
      ?resolve_conflicts_on_update ?service_account_role_arn ?tags
      ?tags_all ?timeouts ~addon_name ~cluster_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
