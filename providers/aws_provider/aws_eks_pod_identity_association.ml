(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_eks_pod_identity_association = {
  cluster_name : string;  (** cluster_name *)
  namespace : string;  (** namespace *)
  role_arn : string;  (** role_arn *)
  service_account : string;  (** service_account *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_eks_pod_identity_association *)

let aws_eks_pod_identity_association ?tags ~cluster_name ~namespace
    ~role_arn ~service_account __resource_id =
  let __resource_type = "aws_eks_pod_identity_association" in
  let __resource =
    { cluster_name; namespace; role_arn; service_account; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_pod_identity_association __resource);
  ()