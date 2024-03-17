(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_node_group__launch_template = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__launch_template *)

type aws_eks_node_group__remote_access = {
  ec2_ssh_key : string prop option; [@option]  (** ec2_ssh_key *)
  source_security_group_ids : string prop list option; [@option]
      (** source_security_group_ids *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__remote_access *)

type aws_eks_node_group__scaling_config = {
  desired_size : float prop;  (** desired_size *)
  max_size : float prop;  (** max_size *)
  min_size : float prop;  (** min_size *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__scaling_config *)

type aws_eks_node_group__taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__taint *)

type aws_eks_node_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__timeouts *)

type aws_eks_node_group__update_config = {
  max_unavailable : float prop option; [@option]
      (** max_unavailable *)
  max_unavailable_percentage : float prop option; [@option]
      (** max_unavailable_percentage *)
}
[@@deriving yojson_of]
(** aws_eks_node_group__update_config *)

type aws_eks_node_group__resources__autoscaling_groups = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_eks_node_group__resources = {
  autoscaling_groups :
    aws_eks_node_group__resources__autoscaling_groups list;
      (** autoscaling_groups *)
  remote_access_security_group_id : string prop;
      (** remote_access_security_group_id *)
}
[@@deriving yojson_of]

type aws_eks_node_group = {
  ami_type : string prop option; [@option]  (** ami_type *)
  capacity_type : string prop option; [@option]  (** capacity_type *)
  cluster_name : string prop;  (** cluster_name *)
  disk_size : float prop option; [@option]  (** disk_size *)
  force_update_version : bool prop option; [@option]
      (** force_update_version *)
  id : string prop option; [@option]  (** id *)
  instance_types : string prop list option; [@option]
      (** instance_types *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  node_group_name : string prop option; [@option]
      (** node_group_name *)
  node_group_name_prefix : string prop option; [@option]
      (** node_group_name_prefix *)
  node_role_arn : string prop;  (** node_role_arn *)
  release_version : string prop option; [@option]
      (** release_version *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop option; [@option]  (** version *)
  launch_template : aws_eks_node_group__launch_template list;
  remote_access : aws_eks_node_group__remote_access list;
  scaling_config : aws_eks_node_group__scaling_config list;
  taint : aws_eks_node_group__taint list;
  timeouts : aws_eks_node_group__timeouts option;
  update_config : aws_eks_node_group__update_config list;
}
[@@deriving yojson_of]
(** aws_eks_node_group *)

type t = {
  ami_type : string prop;
  arn : string prop;
  capacity_type : string prop;
  cluster_name : string prop;
  disk_size : float prop;
  force_update_version : bool prop;
  id : string prop;
  instance_types : string list prop;
  labels : (string * string) list prop;
  node_group_name : string prop;
  node_group_name_prefix : string prop;
  node_role_arn : string prop;
  release_version : string prop;
  resources : aws_eks_node_group__resources list prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let aws_eks_node_group ?ami_type ?capacity_type ?disk_size
    ?force_update_version ?id ?instance_types ?labels
    ?node_group_name ?node_group_name_prefix ?release_version ?tags
    ?tags_all ?version ?timeouts ~cluster_name ~node_role_arn
    ~subnet_ids ~launch_template ~remote_access ~scaling_config
    ~taint ~update_config __resource_id =
  let __resource_type = "aws_eks_node_group" in
  let __resource =
    ({
       ami_type;
       capacity_type;
       cluster_name;
       disk_size;
       force_update_version;
       id;
       instance_types;
       labels;
       node_group_name;
       node_group_name_prefix;
       node_role_arn;
       release_version;
       subnet_ids;
       tags;
       tags_all;
       version;
       launch_template;
       remote_access;
       scaling_config;
       taint;
       timeouts;
       update_config;
     }
      : aws_eks_node_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_node_group __resource);
  let __resource_attributes =
    ({
       ami_type =
         Prop.computed __resource_type __resource_id "ami_type";
       arn = Prop.computed __resource_type __resource_id "arn";
       capacity_type =
         Prop.computed __resource_type __resource_id "capacity_type";
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       disk_size =
         Prop.computed __resource_type __resource_id "disk_size";
       force_update_version =
         Prop.computed __resource_type __resource_id
           "force_update_version";
       id = Prop.computed __resource_type __resource_id "id";
       instance_types =
         Prop.computed __resource_type __resource_id "instance_types";
       labels = Prop.computed __resource_type __resource_id "labels";
       node_group_name =
         Prop.computed __resource_type __resource_id
           "node_group_name";
       node_group_name_prefix =
         Prop.computed __resource_type __resource_id
           "node_group_name_prefix";
       node_role_arn =
         Prop.computed __resource_type __resource_id "node_role_arn";
       release_version =
         Prop.computed __resource_type __resource_id
           "release_version";
       resources =
         Prop.computed __resource_type __resource_id "resources";
       status = Prop.computed __resource_type __resource_id "status";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
