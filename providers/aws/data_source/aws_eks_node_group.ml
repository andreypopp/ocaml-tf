(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type launch_template = {
  id : string prop;
  name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : launch_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template

[@@@deriving.end]

type remote_access = {
  ec2_ssh_key : string prop;
  source_security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_source_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_security_group_ids
           in
           let bnd = "source_security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ec2_ssh_key in
         ("ec2_ssh_key", arg) :: bnds
       in
       `Assoc bnds
    : remote_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_access

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_autoscaling_groups then bnds
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

type taints = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : taints) -> ()

let yojson_of_taints =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
    : taints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_taints

[@@@deriving.end]

type aws_eks_node_group = {
  cluster_name : string prop;
  id : string prop option; [@option]
  node_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_node_group) -> ()

let yojson_of_aws_eks_node_group =
  (function
   | {
       cluster_name = v_cluster_name;
       id = v_id;
       node_group_name = v_node_group_name;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_group_name
         in
         ("node_group_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_eks_node_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_node_group

[@@@deriving.end]

let aws_eks_node_group ?id ?tags ~cluster_name ~node_group_name () :
    aws_eks_node_group =
  { cluster_name; id; node_group_name; tags }

type t = {
  tf_name : string;
  ami_type : string prop;
  arn : string prop;
  capacity_type : string prop;
  cluster_name : string prop;
  disk_size : float prop;
  id : string prop;
  instance_types : string list prop;
  labels : string Tf_core.assoc prop;
  launch_template : launch_template list prop;
  node_group_name : string prop;
  node_role_arn : string prop;
  release_version : string prop;
  remote_access : remote_access list prop;
  resources : resources list prop;
  scaling_config : scaling_config list prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  taints : taints list prop;
  version : string prop;
}

let make ?id ?tags ~cluster_name ~node_group_name __id =
  let __type = "aws_eks_node_group" in
  let __attrs =
    ({
       tf_name = __id;
       ami_type = Prop.computed __type __id "ami_type";
       arn = Prop.computed __type __id "arn";
       capacity_type = Prop.computed __type __id "capacity_type";
       cluster_name = Prop.computed __type __id "cluster_name";
       disk_size = Prop.computed __type __id "disk_size";
       id = Prop.computed __type __id "id";
       instance_types = Prop.computed __type __id "instance_types";
       labels = Prop.computed __type __id "labels";
       launch_template = Prop.computed __type __id "launch_template";
       node_group_name = Prop.computed __type __id "node_group_name";
       node_role_arn = Prop.computed __type __id "node_role_arn";
       release_version = Prop.computed __type __id "release_version";
       remote_access = Prop.computed __type __id "remote_access";
       resources = Prop.computed __type __id "resources";
       scaling_config = Prop.computed __type __id "scaling_config";
       status = Prop.computed __type __id "status";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       taints = Prop.computed __type __id "taints";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_node_group
        (aws_eks_node_group ?id ?tags ~cluster_name ~node_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~cluster_name ~node_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~cluster_name ~node_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
