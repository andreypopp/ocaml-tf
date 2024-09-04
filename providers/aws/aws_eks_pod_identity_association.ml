(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eks_pod_identity_association = {
  cluster_name : string prop;
  namespace : string prop;
  role_arn : string prop;
  service_account : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_pod_identity_association) -> ()

let yojson_of_aws_eks_pod_identity_association =
  (function
   | {
       cluster_name = v_cluster_name;
       namespace = v_namespace;
       role_arn = v_role_arn;
       service_account = v_service_account;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_eks_pod_identity_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_pod_identity_association

[@@@deriving.end]

let aws_eks_pod_identity_association ?tags ~cluster_name ~namespace
    ~role_arn ~service_account () : aws_eks_pod_identity_association
    =
  { cluster_name; namespace; role_arn; service_account; tags }

type t = {
  tf_name : string;
  association_arn : string prop;
  association_id : string prop;
  cluster_name : string prop;
  id : string prop;
  namespace : string prop;
  role_arn : string prop;
  service_account : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?tags ~cluster_name ~namespace ~role_arn ~service_account
    __id =
  let __type = "aws_eks_pod_identity_association" in
  let __attrs =
    ({
       tf_name = __id;
       association_arn = Prop.computed __type __id "association_arn";
       association_id = Prop.computed __type __id "association_id";
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       role_arn = Prop.computed __type __id "role_arn";
       service_account = Prop.computed __type __id "service_account";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_pod_identity_association
        (aws_eks_pod_identity_association ?tags ~cluster_name
           ~namespace ~role_arn ~service_account ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~cluster_name ~namespace ~role_arn
    ~service_account __id =
  let (r : _ Tf_core.resource) =
    make ?tags ~cluster_name ~namespace ~role_arn ~service_account
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
