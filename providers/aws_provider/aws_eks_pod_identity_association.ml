(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_pod_identity_association = {
  cluster_name : string prop;  (** cluster_name *)
  namespace : string prop;  (** namespace *)
  role_arn : string prop;  (** role_arn *)
  service_account : string prop;  (** service_account *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_eks_pod_identity_association *)

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

let aws_eks_pod_identity_association ?tags ~cluster_name ~namespace
    ~role_arn ~service_account __resource_id =
  let __resource_type = "aws_eks_pod_identity_association" in
  let __resource =
    ({ cluster_name; namespace; role_arn; service_account; tags }
      : aws_eks_pod_identity_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_pod_identity_association __resource);
  let __resource_attributes =
    ({
       association_arn =
         Prop.computed __resource_type __resource_id
           "association_arn";
       association_id =
         Prop.computed __resource_type __resource_id "association_id";
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       id = Prop.computed __resource_type __resource_id "id";
       namespace =
         Prop.computed __resource_type __resource_id "namespace";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       service_account =
         Prop.computed __resource_type __resource_id
           "service_account";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
