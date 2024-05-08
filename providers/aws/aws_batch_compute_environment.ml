(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_resources__ec2_configuration = {
  image_id_override : string prop option; [@option]
  image_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_resources__ec2_configuration) -> ()

let yojson_of_compute_resources__ec2_configuration =
  (function
   | {
       image_id_override = v_image_id_override;
       image_type = v_image_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_image_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_id_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_id_override", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : compute_resources__ec2_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_resources__ec2_configuration

[@@@deriving.end]

type compute_resources__launch_template = {
  launch_template_id : string prop option; [@option]
  launch_template_name : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_resources__launch_template) -> ()

let yojson_of_compute_resources__launch_template =
  (function
   | {
       launch_template_id = v_launch_template_id;
       launch_template_name = v_launch_template_name;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_launch_template_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_template_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_template_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_template_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : compute_resources__launch_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_resources__launch_template

[@@@deriving.end]

type compute_resources = {
  allocation_strategy : string prop option; [@option]
  bid_percentage : float prop option; [@option]
  desired_vcpus : float prop option; [@option]
  ec2_key_pair : string prop option; [@option]
  image_id : string prop option; [@option]
  instance_role : string prop option; [@option]
  instance_type : string prop list option; [@option]
  max_vcpus : float prop;
  min_vcpus : float prop option; [@option]
  placement_group : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  spot_iam_fleet_role : string prop option; [@option]
  subnets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  ec2_configuration : compute_resources__ec2_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_template : compute_resources__launch_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_resources) -> ()

let yojson_of_compute_resources =
  (function
   | {
       allocation_strategy = v_allocation_strategy;
       bid_percentage = v_bid_percentage;
       desired_vcpus = v_desired_vcpus;
       ec2_key_pair = v_ec2_key_pair;
       image_id = v_image_id;
       instance_role = v_instance_role;
       instance_type = v_instance_type;
       max_vcpus = v_max_vcpus;
       min_vcpus = v_min_vcpus;
       placement_group = v_placement_group;
       security_group_ids = v_security_group_ids;
       spot_iam_fleet_role = v_spot_iam_fleet_role;
       subnets = v_subnets;
       tags = v_tags;
       type_ = v_type_;
       ec2_configuration = v_ec2_configuration;
       launch_template = v_launch_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_compute_resources__launch_template)
               v_launch_template
           in
           let bnd = "launch_template", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ec2_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_compute_resources__ec2_configuration)
               v_ec2_configuration
           in
           let bnd = "ec2_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         if Stdlib.( = ) [] v_subnets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnets
           in
           let bnd = "subnets", arg in
           bnd :: bnds
       in
       let bnds =
         match v_spot_iam_fleet_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spot_iam_fleet_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_placement_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "placement_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_vcpus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_vcpus", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_vcpus in
         ("max_vcpus", arg) :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ec2_key_pair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ec2_key_pair", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_vcpus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_vcpus", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bid_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bid_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : compute_resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_resources

[@@@deriving.end]

type eks_configuration = {
  eks_cluster_arn : string prop;
  kubernetes_namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_configuration) -> ()

let yojson_of_eks_configuration =
  (function
   | {
       eks_cluster_arn = v_eks_cluster_arn;
       kubernetes_namespace = v_kubernetes_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kubernetes_namespace
         in
         ("kubernetes_namespace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_eks_cluster_arn
         in
         ("eks_cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : eks_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_configuration

[@@@deriving.end]

type update_policy = {
  job_execution_timeout_minutes : float prop;
  terminate_jobs_on_update : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : update_policy) -> ()

let yojson_of_update_policy =
  (function
   | {
       job_execution_timeout_minutes =
         v_job_execution_timeout_minutes;
       terminate_jobs_on_update = v_terminate_jobs_on_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_terminate_jobs_on_update
         in
         ("terminate_jobs_on_update", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_job_execution_timeout_minutes
         in
         ("job_execution_timeout_minutes", arg) :: bnds
       in
       `Assoc bnds
    : update_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_update_policy

[@@@deriving.end]

type aws_batch_compute_environment = {
  compute_environment_name : string prop option; [@option]
  compute_environment_name_prefix : string prop option; [@option]
  id : string prop option; [@option]
  service_role : string prop option; [@option]
  state : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  compute_resources : compute_resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  eks_configuration : eks_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  update_policy : update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_batch_compute_environment) -> ()

let yojson_of_aws_batch_compute_environment =
  (function
   | {
       compute_environment_name = v_compute_environment_name;
       compute_environment_name_prefix =
         v_compute_environment_name_prefix;
       id = v_id;
       service_role = v_service_role;
       state = v_state;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       compute_resources = v_compute_resources;
       eks_configuration = v_eks_configuration;
       update_policy = v_update_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_update_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_update_policy) v_update_policy
           in
           let bnd = "update_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_eks_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_eks_configuration)
               v_eks_configuration
           in
           let bnd = "eks_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_compute_resources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_compute_resources)
               v_compute_resources
           in
           let bnd = "compute_resources", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_role", arg in
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
         match v_compute_environment_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_environment_name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_environment_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_environment_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_batch_compute_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_batch_compute_environment

[@@@deriving.end]

let compute_resources__ec2_configuration ?image_id_override
    ?image_type () : compute_resources__ec2_configuration =
  { image_id_override; image_type }

let compute_resources__launch_template ?launch_template_id
    ?launch_template_name ?version () :
    compute_resources__launch_template =
  { launch_template_id; launch_template_name; version }

let compute_resources ?allocation_strategy ?bid_percentage
    ?desired_vcpus ?ec2_key_pair ?image_id ?instance_role
    ?instance_type ?min_vcpus ?placement_group ?security_group_ids
    ?spot_iam_fleet_role ?tags ?(ec2_configuration = [])
    ?(launch_template = []) ~max_vcpus ~subnets ~type_ () :
    compute_resources =
  {
    allocation_strategy;
    bid_percentage;
    desired_vcpus;
    ec2_key_pair;
    image_id;
    instance_role;
    instance_type;
    max_vcpus;
    min_vcpus;
    placement_group;
    security_group_ids;
    spot_iam_fleet_role;
    subnets;
    tags;
    type_;
    ec2_configuration;
    launch_template;
  }

let eks_configuration ~eks_cluster_arn ~kubernetes_namespace () :
    eks_configuration =
  { eks_cluster_arn; kubernetes_namespace }

let update_policy ~job_execution_timeout_minutes
    ~terminate_jobs_on_update () : update_policy =
  { job_execution_timeout_minutes; terminate_jobs_on_update }

let aws_batch_compute_environment ?compute_environment_name
    ?compute_environment_name_prefix ?id ?service_role ?state ?tags
    ?tags_all ?(compute_resources = []) ?(eks_configuration = [])
    ?(update_policy = []) ~type_ () : aws_batch_compute_environment =
  {
    compute_environment_name;
    compute_environment_name_prefix;
    id;
    service_role;
    state;
    tags;
    tags_all;
    type_;
    compute_resources;
    eks_configuration;
    update_policy;
  }

type t = {
  tf_name : string;
  arn : string prop;
  compute_environment_name : string prop;
  compute_environment_name_prefix : string prop;
  ecs_cluster_arn : string prop;
  id : string prop;
  service_role : string prop;
  state : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?compute_environment_name ?compute_environment_name_prefix
    ?id ?service_role ?state ?tags ?tags_all
    ?(compute_resources = []) ?(eks_configuration = [])
    ?(update_policy = []) ~type_ __id =
  let __type = "aws_batch_compute_environment" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       compute_environment_name =
         Prop.computed __type __id "compute_environment_name";
       compute_environment_name_prefix =
         Prop.computed __type __id "compute_environment_name_prefix";
       ecs_cluster_arn = Prop.computed __type __id "ecs_cluster_arn";
       id = Prop.computed __type __id "id";
       service_role = Prop.computed __type __id "service_role";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_compute_environment
        (aws_batch_compute_environment ?compute_environment_name
           ?compute_environment_name_prefix ?id ?service_role ?state
           ?tags ?tags_all ~compute_resources ~eks_configuration
           ~update_policy ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_environment_name
    ?compute_environment_name_prefix ?id ?service_role ?state ?tags
    ?tags_all ?(compute_resources = []) ?(eks_configuration = [])
    ?(update_policy = []) ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?compute_environment_name ?compute_environment_name_prefix
      ?id ?service_role ?state ?tags ?tags_all ~compute_resources
      ~eks_configuration ~update_policy ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
