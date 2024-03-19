(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?kubernetes_groups ?tags ?tags_all ?type_
    ?user_name ?timeouts ~cluster_name ~principal_arn __resource_id =
  let __resource_type = "aws_eks_access_entry" in
  let __resource =
    aws_eks_access_entry ?id ?kubernetes_groups ?tags ?tags_all
      ?type_ ?user_name ?timeouts ~cluster_name ~principal_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_access_entry __resource);
  let __resource_attributes =
    ({
       access_entry_arn =
         Prop.computed __resource_type __resource_id
           "access_entry_arn";
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_groups =
         Prop.computed __resource_type __resource_id
           "kubernetes_groups";
       modified_at =
         Prop.computed __resource_type __resource_id "modified_at";
       principal_arn =
         Prop.computed __resource_type __resource_id "principal_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
