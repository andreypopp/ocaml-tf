(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_eks_addon = {
  addon_name : string prop;  (** addon_name *)
  addon_version : string prop option; [@option]  (** addon_version *)
  cluster_name : string prop;  (** cluster_name *)
  configuration_values : string prop option; [@option]
      (** configuration_values *)
  id : string prop option; [@option]  (** id *)
  preserve : bool prop option; [@option]  (** preserve *)
  resolve_conflicts : string prop option; [@option]
      (** resolve_conflicts *)
  resolve_conflicts_on_create : string prop option; [@option]
      (** resolve_conflicts_on_create *)
  resolve_conflicts_on_update : string prop option; [@option]
      (** resolve_conflicts_on_update *)
  service_account_role_arn : string prop option; [@option]
      (** service_account_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_addon *)

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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?addon_version ?configuration_values ?id ?preserve
    ?resolve_conflicts ?resolve_conflicts_on_create
    ?resolve_conflicts_on_update ?service_account_role_arn ?tags
    ?tags_all ?timeouts ~addon_name ~cluster_name __id =
  let __type = "aws_eks_addon" in
  let __attrs =
    ({
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
