(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eks_access_entry = {
  cluster_name : string prop;
  id : string prop option; [@option]
  principal_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_access_entry) -> ()

let yojson_of_aws_eks_access_entry =
  (function
   | {
       cluster_name = v_cluster_name;
       id = v_id;
       principal_arn = v_principal_arn;
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
         let arg = yojson_of_prop yojson_of_string v_principal_arn in
         ("principal_arn", arg) :: bnds
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
       `Assoc bnds
    : aws_eks_access_entry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_access_entry

[@@@deriving.end]

let aws_eks_access_entry ?id ?tags ?tags_all ~cluster_name
    ~principal_arn () : aws_eks_access_entry =
  { cluster_name; id; principal_arn; tags; tags_all }

type t = {
  tf_name : string;
  access_entry_arn : string prop;
  cluster_name : string prop;
  created_at : string prop;
  id : string prop;
  kubernetes_groups : string list prop;
  modified_at : string prop;
  principal_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  user_name : string prop;
}

let make ?id ?tags ?tags_all ~cluster_name ~principal_arn __id =
  let __type = "aws_eks_access_entry" in
  let __attrs =
    ({
       tf_name = __id;
       access_entry_arn =
         Prop.computed __type __id "access_entry_arn";
       cluster_name = Prop.computed __type __id "cluster_name";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       kubernetes_groups =
         Prop.computed __type __id "kubernetes_groups";
       modified_at = Prop.computed __type __id "modified_at";
       principal_arn = Prop.computed __type __id "principal_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_access_entry
        (aws_eks_access_entry ?id ?tags ?tags_all ~cluster_name
           ~principal_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~cluster_name
    ~principal_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~cluster_name ~principal_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
