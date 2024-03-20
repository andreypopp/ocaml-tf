(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_scope = {
  namespaces : string prop list option; [@option]  (** namespaces *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** access_scope *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_eks_access_policy_association = {
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
  principal_arn : string prop;  (** principal_arn *)
  access_scope : access_scope list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_access_policy_association *)

let access_scope ?namespaces ~type_ () : access_scope =
  { namespaces; type_ }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_eks_access_policy_association ?id ?timeouts ~cluster_name
    ~policy_arn ~principal_arn ~access_scope () :
    aws_eks_access_policy_association =
  {
    cluster_name;
    id;
    policy_arn;
    principal_arn;
    access_scope;
    timeouts;
  }

type t = {
  associated_at : string prop;
  cluster_name : string prop;
  id : string prop;
  modified_at : string prop;
  policy_arn : string prop;
  principal_arn : string prop;
}

let make ?id ?timeouts ~cluster_name ~policy_arn ~principal_arn
    ~access_scope __id =
  let __type = "aws_eks_access_policy_association" in
  let __attrs =
    ({
       associated_at = Prop.computed __type __id "associated_at";
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       modified_at = Prop.computed __type __id "modified_at";
       policy_arn = Prop.computed __type __id "policy_arn";
       principal_arn = Prop.computed __type __id "principal_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_access_policy_association
        (aws_eks_access_policy_association ?id ?timeouts
           ~cluster_name ~policy_arn ~principal_arn ~access_scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cluster_name ~policy_arn
    ~principal_arn ~access_scope __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cluster_name ~policy_arn ~principal_arn
      ~access_scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
