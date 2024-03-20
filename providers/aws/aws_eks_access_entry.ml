(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_eks_access_entry = {
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  kubernetes_groups : string prop list option; [@option]
      (** kubernetes_groups *)
  principal_arn : string prop;  (** principal_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  user_name : string prop option; [@option]  (** user_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_access_entry *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_eks_access_entry ?id ?kubernetes_groups ?tags ?tags_all
    ?type_ ?user_name ?timeouts ~cluster_name ~principal_arn () :
    aws_eks_access_entry =
  {
    cluster_name;
    id;
    kubernetes_groups;
    principal_arn;
    tags;
    tags_all;
    type_;
    user_name;
    timeouts;
  }

type t = {
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

let make ?id ?kubernetes_groups ?tags ?tags_all ?type_ ?user_name
    ?timeouts ~cluster_name ~principal_arn __id =
  let __type = "aws_eks_access_entry" in
  let __attrs =
    ({
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
        (aws_eks_access_entry ?id ?kubernetes_groups ?tags ?tags_all
           ?type_ ?user_name ?timeouts ~cluster_name ~principal_arn
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kubernetes_groups ?tags ?tags_all ?type_
    ?user_name ?timeouts ~cluster_name ~principal_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kubernetes_groups ?tags ?tags_all ?type_ ?user_name
      ?timeouts ~cluster_name ~principal_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
