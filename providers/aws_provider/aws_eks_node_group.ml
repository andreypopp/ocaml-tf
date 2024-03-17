(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_eks_node_group__launch_template = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__launch_template *)

type aws_eks_node_group__remote_access = {
  ec2_ssh_key : string option; [@option]  (** ec2_ssh_key *)
  source_security_group_ids : string list option; [@option]
      (** source_security_group_ids *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__remote_access *)

type aws_eks_node_group__scaling_config = {
  desired_size : float;  (** desired_size *)
  max_size : float;  (** max_size *)
  min_size : float;  (** min_size *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__scaling_config *)

type aws_eks_node_group__taint = {
  effect : string;  (** effect *)
  key : string;  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__taint *)

type aws_eks_node_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__timeouts *)

type aws_eks_node_group__update_config = {
  max_unavailable : float option; [@option]  (** max_unavailable *)
  max_unavailable_percentage : float option; [@option]
      (** max_unavailable_percentage *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__update_config *)

type aws_eks_node_group__resources__autoscaling_groups = {
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_eks_node_group__resources = {
  autoscaling_groups :
    aws_eks_node_group__resources__autoscaling_groups list;
      (** autoscaling_groups *)
  remote_access_security_group_id : string;
      (** remote_access_security_group_id *)
}
[@@deriving yojson_of]

type aws_eks_node_group = {
  cluster_name : string;  (** cluster_name *)
  force_update_version : bool option; [@option]
      (** force_update_version *)
  labels : (string * string) list option; [@option]  (** labels *)
  node_role_arn : string;  (** node_role_arn *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  launch_template : aws_eks_node_group__launch_template list;
  remote_access : aws_eks_node_group__remote_access list;
  scaling_config : aws_eks_node_group__scaling_config list;
  taint : aws_eks_node_group__taint list;
  timeouts : aws_eks_node_group__timeouts option;
  update_config : aws_eks_node_group__update_config list;
}
[@@deriving yojson_of]
(** aws_eks_node_group *)

let aws_eks_node_group ?force_update_version ?labels ?tags ?timeouts
    ~cluster_name ~node_role_arn ~subnet_ids ~launch_template
    ~remote_access ~scaling_config ~taint ~update_config
    __resource_id =
  let __resource_type = "aws_eks_node_group" in
  let __resource =
    {
      cluster_name;
      force_update_version;
      labels;
      node_role_arn;
      subnet_ids;
      tags;
      launch_template;
      remote_access;
      scaling_config;
      taint;
      timeouts;
      update_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_node_group __resource);
  ()
