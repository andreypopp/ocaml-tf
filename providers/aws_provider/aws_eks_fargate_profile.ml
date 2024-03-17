(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_fargate_profile__selector = {
  labels : (string * string) list option; [@option]  (** labels *)
  namespace : string;  (** namespace *)
}
[@@deriving yojson_of]
(** aws_eks_fargate_profile__selector *)

type aws_eks_fargate_profile__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_eks_fargate_profile__timeouts *)

type aws_eks_fargate_profile = {
  cluster_name : string;  (** cluster_name *)
  fargate_profile_name : string;  (** fargate_profile_name *)
  id : string option; [@option]  (** id *)
  pod_execution_role_arn : string;  (** pod_execution_role_arn *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  selector : aws_eks_fargate_profile__selector list;
  timeouts : aws_eks_fargate_profile__timeouts option;
}
[@@deriving yojson_of]
(** aws_eks_fargate_profile *)

let aws_eks_fargate_profile ?id ?subnet_ids ?tags ?tags_all ?timeouts
    ~cluster_name ~fargate_profile_name ~pod_execution_role_arn
    ~selector __resource_id =
  let __resource_type = "aws_eks_fargate_profile" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_fargate_profile __resource);
  ()
