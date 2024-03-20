(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eks_pod_identity_association = {
  cluster_name : string prop;  (** cluster_name *)
  namespace : string prop;  (** namespace *)
  role_arn : string prop;  (** role_arn *)
  service_account : string prop;  (** service_account *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_eks_pod_identity_association *)

let aws_eks_pod_identity_association ?tags ~cluster_name ~namespace
    ~role_arn ~service_account () : aws_eks_pod_identity_association
    =
  { cluster_name; namespace; role_arn; service_account; tags }

type t = {
  association_arn : string prop;
  association_id : string prop;
  cluster_name : string prop;
  id : string prop;
  namespace : string prop;
  role_arn : string prop;
  service_account : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ~cluster_name ~namespace ~role_arn ~service_account
    __id =
  let __type = "aws_eks_pod_identity_association" in
  let __attrs =
    ({
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
