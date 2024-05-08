(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type launch_template = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_template) -> ()

let yojson_of_launch_template =
  (function
   | { id = v_id; name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template

[@@@deriving.end]

type remote_access = {
  ec2_ssh_key : string prop option; [@option]
  source_security_group_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_access) -> ()

let yojson_of_remote_access =
  (function
   | {
       ec2_ssh_key = v_ec2_ssh_key;
       source_security_group_ids = v_source_security_group_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ec2_ssh_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ec2_ssh_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : remote_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_access

[@@@deriving.end]

type scaling_config = {
  desired_size : float prop;
  max_size : float prop;
  min_size : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scaling_config) -> ()

let yojson_of_scaling_config =
  (function
   | {
       desired_size = v_desired_size;
       max_size = v_max_size;
       min_size = v_min_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_size in
         ("min_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_size in
         ("max_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_desired_size in
         ("desired_size", arg) :: bnds
       in
       `Assoc bnds
    : scaling_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_config

[@@@deriving.end]

type taint = {
  effect : string prop;
  key : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : taint) -> ()

let yojson_of_taint =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : taint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_taint

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type update_config = {
  max_unavailable : float prop option; [@option]
  max_unavailable_percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : update_config) -> ()

let yojson_of_update_config =
  (function
   | {
       max_unavailable = v_max_unavailable;
       max_unavailable_percentage = v_max_unavailable_percentage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_unavailable_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unavailable_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unavailable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unavailable", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : update_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_update_config

[@@@deriving.end]

type resources__autoscaling_groups = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : resources__autoscaling_groups) -> ()

let yojson_of_resources__autoscaling_groups =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : resources__autoscaling_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources__autoscaling_groups

[@@@deriving.end]

type resources = {
  autoscaling_groups : resources__autoscaling_groups list;
      [@default []] [@yojson_drop_default ( = )]
  remote_access_security_group_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources) -> ()

let yojson_of_resources =
  (function
   | {
       autoscaling_groups = v_autoscaling_groups;
       remote_access_security_group_id =
         v_remote_access_security_group_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_remote_access_security_group_id
         in
         ("remote_access_security_group_id", arg) :: bnds
       in
       let bnds =
         if [] = v_autoscaling_groups then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resources__autoscaling_groups)
               v_autoscaling_groups
           in
           let bnd = "autoscaling_groups", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources

[@@@deriving.end]

type aws_eks_node_group = {
  ami_type : string prop option; [@option]
  capacity_type : string prop option; [@option]
  cluster_name : string prop;
  disk_size : float prop option; [@option]
  force_update_version : bool prop option; [@option]
  id : string prop option; [@option]
  instance_types : string prop list option; [@option]
  labels : (string * string prop) list option; [@option]
  node_group_name : string prop option; [@option]
  node_group_name_prefix : string prop option; [@option]
  node_role_arn : string prop;
  release_version : string prop option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  version : string prop option; [@option]
  launch_template : launch_template list;
      [@default []] [@yojson_drop_default ( = )]
  remote_access : remote_access list;
      [@default []] [@yojson_drop_default ( = )]
  scaling_config : scaling_config list;
      [@default []] [@yojson_drop_default ( = )]
  taint : taint list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  update_config : update_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_node_group) -> ()

let yojson_of_aws_eks_node_group =
  (function
   | {
       ami_type = v_ami_type;
       capacity_type = v_capacity_type;
       cluster_name = v_cluster_name;
       disk_size = v_disk_size;
       force_update_version = v_force_update_version;
       id = v_id;
       instance_types = v_instance_types;
       labels = v_labels;
       node_group_name = v_node_group_name;
       node_group_name_prefix = v_node_group_name_prefix;
       node_role_arn = v_node_role_arn;
       release_version = v_release_version;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       version = v_version;
       launch_template = v_launch_template;
       remote_access = v_remote_access;
       scaling_config = v_scaling_config;
       taint = v_taint;
       timeouts = v_timeouts;
       update_config = v_update_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_update_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_update_config) v_update_config
           in
           let bnd = "update_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_taint then bnds
         else
           let arg = (yojson_of_list yojson_of_taint) v_taint in
           let bnd = "taint", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_scaling_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scaling_config)
               v_scaling_config
           in
           let bnd = "scaling_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_remote_access then bnds
         else
           let arg =
             (yojson_of_list yojson_of_remote_access) v_remote_access
           in
           let bnd = "remote_access", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_launch_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_launch_template)
               v_launch_template
           in
           let bnd = "launch_template", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_release_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "release_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_role_arn in
         ("node_role_arn", arg) :: bnds
       in
       let bnds =
         match v_node_group_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_group_name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_update_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_update_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       let bnds =
         match v_capacity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capacity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ami_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ami_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_eks_node_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_node_group

[@@@deriving.end]

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
    ?tags_all ?version ?(launch_template = []) ?(remote_access = [])
    ?timeouts ?(update_config = []) ~cluster_name ~node_role_arn
    ~subnet_ids ~scaling_config ~taint () : aws_eks_node_group =
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
  tf_name : string;
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
    ?(launch_template = []) ?(remote_access = []) ?timeouts
    ?(update_config = []) ~cluster_name ~node_role_arn ~subnet_ids
    ~scaling_config ~taint __id =
  let __type = "aws_eks_node_group" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags ?tags_all ?version ~launch_template ~remote_access
           ?timeouts ~update_config ~cluster_name ~node_role_arn
           ~subnet_ids ~scaling_config ~taint ());
    attrs = __attrs;
  }

let register ?tf_module ?ami_type ?capacity_type ?disk_size
    ?force_update_version ?id ?instance_types ?labels
    ?node_group_name ?node_group_name_prefix ?release_version ?tags
    ?tags_all ?version ?(launch_template = []) ?(remote_access = [])
    ?timeouts ?(update_config = []) ~cluster_name ~node_role_arn
    ~subnet_ids ~scaling_config ~taint __id =
  let (r : _ Tf_core.resource) =
    make ?ami_type ?capacity_type ?disk_size ?force_update_version
      ?id ?instance_types ?labels ?node_group_name
      ?node_group_name_prefix ?release_version ?tags ?tags_all
      ?version ~launch_template ~remote_access ?timeouts
      ~update_config ~cluster_name ~node_role_arn ~subnet_ids
      ~scaling_config ~taint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
