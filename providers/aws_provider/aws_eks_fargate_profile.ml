(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_fargate_profile__selector = {
  labels : (string * string prop) list option; [@option]
      (** labels *)
  namespace : string prop;  (** namespace *)
}
[@@deriving yojson_of]
(** aws_eks_fargate_profile__selector *)

type aws_eks_fargate_profile__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_eks_fargate_profile__timeouts *)

type aws_eks_fargate_profile = {
  cluster_name : string prop;  (** cluster_name *)
  fargate_profile_name : string prop;  (** fargate_profile_name *)
  id : string prop option; [@option]  (** id *)
  pod_execution_role_arn : string prop;
      (** pod_execution_role_arn *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  selector : aws_eks_fargate_profile__selector list;
  timeouts : aws_eks_fargate_profile__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_fargate_profile *)

type t = {
  arn : string prop;
  cluster_name : string prop;
  fargate_profile_name : string prop;
  id : string prop;
  pod_execution_role_arn : string prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_eks_fargate_profile ?id ?subnet_ids ?tags ?tags_all ?timeouts
    ~cluster_name ~fargate_profile_name ~pod_execution_role_arn
    ~selector __resource_id =
  let __resource_type = "aws_eks_fargate_profile" in
  let __resource =
    ({
       cluster_name;
       fargate_profile_name;
       id;
       pod_execution_role_arn;
       subnet_ids;
       tags;
       tags_all;
       selector;
       timeouts;
     }
      : aws_eks_fargate_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_fargate_profile __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       fargate_profile_name =
         Prop.computed __resource_type __resource_id
           "fargate_profile_name";
       id = Prop.computed __resource_type __resource_id "id";
       pod_execution_role_arn =
         Prop.computed __resource_type __resource_id
           "pod_execution_role_arn";
       status = Prop.computed __resource_type __resource_id "status";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
