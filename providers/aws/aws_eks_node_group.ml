(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type launch_template = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** launch_template *)

type remote_access = {
  ec2_ssh_key : string prop option; [@option]  (** ec2_ssh_key *)
  source_security_group_ids : string prop list option; [@option]
      (** source_security_group_ids *)
}
[@@deriving yojson_of]
(** remote_access *)

type scaling_config = {
  desired_size : float prop;  (** desired_size *)
  max_size : float prop;  (** max_size *)
  min_size : float prop;  (** min_size *)
}
[@@deriving yojson_of]
(** scaling_config *)

type taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** taint *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type update_config = {
  max_unavailable : float prop option; [@option]
      (** max_unavailable *)
  max_unavailable_percentage : float prop option; [@option]
      (** max_unavailable_percentage *)
}
[@@deriving yojson_of]
(** update_config *)

type resources__autoscaling_groups = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type resources = {
  autoscaling_groups : resources__autoscaling_groups list;
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
  launch_template : launch_template list;
  remote_access : remote_access list;
  scaling_config : scaling_config list;
  taint : taint list;
  timeouts : timeouts option;
  update_config : update_config list;
}
[@@deriving yojson_of]
(** aws_eks_node_group *)

let launch_template ?id ?name ~version () : launch_template =
  { id; name; version }

let remote_access ?ec2_ssh_key ?source_security_group_ids () :
    remote_access =
  { ec2_ssh_key; source_security_group_ids }

let scaling_config ~desired_size ~max_size ~min_size () :
    scaling_config =
  { desired_size; max_size; min_size }

let taint ?value ~effect ~key () : taint = { effect; key; value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let update_config ?max_unavailable ?max_unavailable_percentage () :
    update_config =
  { max_unavailable; max_unavailable_percentage }

let aws_eks_node_group ?ami_type ?capacity_type ?disk_size
    ?force_update_version ?id ?instance_types ?labels
    ?node_group_name ?node_group_name_prefix ?release_version ?tags
    ?tags_all ?version ?timeouts ~cluster_name ~node_role_arn
    ~subnet_ids ~launch_template ~remote_access ~scaling_config
    ~taint ~update_config () : aws_eks_node_group =
  {
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
  resources : resources list prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let make ?ami_type ?capacity_type ?disk_size ?force_update_version
    ?id ?instance_types ?labels ?node_group_name
    ?node_group_name_prefix ?release_version ?tags ?tags_all ?version
    ?timeouts ~cluster_name ~node_role_arn ~subnet_ids
    ~launch_template ~remote_access ~scaling_config ~taint
    ~update_config __id =
  let __type = "aws_eks_node_group" in
  let __attrs =
    ({
       ami_type = Prop.computed __type __id "ami_type";
       arn = Prop.computed __type __id "arn";
       capacity_type = Prop.computed __type __id "capacity_type";
       cluster_name = Prop.computed __type __id "cluster_name";
       disk_size = Prop.computed __type __id "disk_size";
       force_update_version =
         Prop.computed __type __id "force_update_version";
       id = Prop.computed __type __id "id";
       instance_types = Prop.computed __type __id "instance_types";
       labels = Prop.computed __type __id "labels";
       node_group_name = Prop.computed __type __id "node_group_name";
       node_group_name_prefix =
         Prop.computed __type __id "node_group_name_prefix";
       node_role_arn = Prop.computed __type __id "node_role_arn";
       release_version = Prop.computed __type __id "release_version";
       resources = Prop.computed __type __id "resources";
       status = Prop.computed __type __id "status";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_node_group
        (aws_eks_node_group ?ami_type ?capacity_type ?disk_size
           ?force_update_version ?id ?instance_types ?labels
           ?node_group_name ?node_group_name_prefix ?release_version
           ?tags ?tags_all ?version ?timeouts ~cluster_name
           ~node_role_arn ~subnet_ids ~launch_template ~remote_access
           ~scaling_config ~taint ~update_config ());
    attrs = __attrs;
  }

let register ?tf_module ?ami_type ?capacity_type ?disk_size
    ?force_update_version ?id ?instance_types ?labels
    ?node_group_name ?node_group_name_prefix ?release_version ?tags
    ?tags_all ?version ?timeouts ~cluster_name ~node_role_arn
    ~subnet_ids ~launch_template ~remote_access ~scaling_config
    ~taint ~update_config __id =
  let (r : _ Tf_core.resource) =
    make ?ami_type ?capacity_type ?disk_size ?force_update_version
      ?id ?instance_types ?labels ?node_group_name
      ?node_group_name_prefix ?release_version ?tags ?tags_all
      ?version ?timeouts ~cluster_name ~node_role_arn ~subnet_ids
      ~launch_template ~remote_access ~scaling_config ~taint
      ~update_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
