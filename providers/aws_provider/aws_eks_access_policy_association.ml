(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_access_policy_association__access_scope = {
  namespaces : string prop list option; [@option]  (** namespaces *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_eks_access_policy_association__access_scope *)

type aws_eks_access_policy_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_eks_access_policy_association__timeouts *)

type aws_eks_access_policy_association = {
  cluster_name : string prop;  (** cluster_name *)
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
  principal_arn : string prop;  (** principal_arn *)
  access_scope :
    aws_eks_access_policy_association__access_scope list;
  timeouts : aws_eks_access_policy_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_access_policy_association *)

type t = {
  associated_at : string prop;
  cluster_name : string prop;
  id : string prop;
  modified_at : string prop;
  policy_arn : string prop;
  principal_arn : string prop;
}

let aws_eks_access_policy_association ?id ?timeouts ~cluster_name
    ~policy_arn ~principal_arn ~access_scope __resource_id =
  let __resource_type = "aws_eks_access_policy_association" in
  let __resource =
    ({
       cluster_name;
       id;
       policy_arn;
       principal_arn;
       access_scope;
       timeouts;
     }
      : aws_eks_access_policy_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_access_policy_association __resource);
  let __resource_attributes =
    ({
       associated_at =
         Prop.computed __resource_type __resource_id "associated_at";
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       id = Prop.computed __resource_type __resource_id "id";
       modified_at =
         Prop.computed __resource_type __resource_id "modified_at";
       policy_arn =
         Prop.computed __resource_type __resource_id "policy_arn";
       principal_arn =
         Prop.computed __resource_type __resource_id "principal_arn";
     }
      : t)
  in
  __resource_attributes
