(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_eks_access_policy_association__access_scope = {
  namespaces : string list option; [@option]  (** namespaces *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_eks_access_policy_association__access_scope *)

type aws_eks_access_policy_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_eks_access_policy_association__timeouts *)

type aws_eks_access_policy_association = {
  cluster_name : string;  (** cluster_name *)
  policy_arn : string;  (** policy_arn *)
  principal_arn : string;  (** principal_arn *)
  access_scope :
    aws_eks_access_policy_association__access_scope list;
  timeouts : aws_eks_access_policy_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_access_policy_association *)

let aws_eks_access_policy_association ?timeouts ~cluster_name
    ~policy_arn ~principal_arn ~access_scope __resource_id =
  let __resource_type = "aws_eks_access_policy_association" in
  let __resource =
    {
      cluster_name;
      policy_arn;
      principal_arn;
      access_scope;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_access_policy_association __resource);
  ()