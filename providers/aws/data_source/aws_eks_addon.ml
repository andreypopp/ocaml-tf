(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eks_addon = {
  addon_name : string prop;
  cluster_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_addon) -> ()

let yojson_of_aws_eks_addon =
  (function
   | {
       addon_name = v_addon_name;
       cluster_name = v_cluster_name;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_addon_name in
         ("addon_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_eks_addon -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_addon

[@@@deriving.end]

let aws_eks_addon ?id ?tags ~addon_name ~cluster_name () :
    aws_eks_addon =
  { addon_name; cluster_name; id; tags }

type t = {
  addon_name : string prop;
  addon_version : string prop;
  arn : string prop;
  cluster_name : string prop;
  configuration_values : string prop;
  created_at : string prop;
  id : string prop;
  modified_at : string prop;
  service_account_role_arn : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~addon_name ~cluster_name __id =
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
       service_account_role_arn =
         Prop.computed __type __id "service_account_role_arn";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_addon
        (aws_eks_addon ?id ?tags ~addon_name ~cluster_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~addon_name ~cluster_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~addon_name ~cluster_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
