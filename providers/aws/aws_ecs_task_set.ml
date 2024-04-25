(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity_provider_strategy = {
  base : float prop option; [@option]
  capacity_provider : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity_provider_strategy) -> ()

let yojson_of_capacity_provider_strategy =
  (function
   | {
       base = v_base;
       capacity_provider = v_capacity_provider;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_capacity_provider
         in
         ("capacity_provider", arg) :: bnds
       in
       let bnds =
         match v_base with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "base", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity_provider_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity_provider_strategy

[@@@deriving.end]

type load_balancer = {
  container_name : string prop;
  container_port : float prop option; [@option]
  load_balancer_name : string prop option; [@option]
  target_group_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer) -> ()

let yojson_of_load_balancer =
  (function
   | {
       container_name = v_container_name;
       container_port = v_container_port;
       load_balancer_name = v_load_balancer_name;
       target_group_arn = v_target_group_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_group_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer

[@@@deriving.end]

type network_configuration = {
  assign_public_ip : bool prop option; [@option]
  security_groups : string prop list option; [@option]
  subnets : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration) -> ()

let yojson_of_network_configuration =
  (function
   | {
       assign_public_ip = v_assign_public_ip;
       security_groups = v_security_groups;
       subnets = v_subnets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_subnets
         in
         ("subnets", arg) :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assign_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "assign_public_ip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration

[@@@deriving.end]

type scale = {
  unit : string prop option; [@option]
  value : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scale) -> ()

let yojson_of_scale =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scale

[@@@deriving.end]

type service_registries = {
  container_name : string prop option; [@option]
  container_port : float prop option; [@option]
  port : float prop option; [@option]
  registry_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_registries) -> ()

let yojson_of_service_registries =
  (function
   | {
       container_name = v_container_name;
       container_port = v_container_port;
       port = v_port;
       registry_arn = v_registry_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_arn in
         ("registry_arn", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_registries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_registries

[@@@deriving.end]

type aws_ecs_task_set = {
  cluster : string prop;
  external_id : string prop option; [@option]
  force_delete : bool prop option; [@option]
  id : string prop option; [@option]
  launch_type : string prop option; [@option]
  platform_version : string prop option; [@option]
  service : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  task_definition : string prop;
  wait_until_stable : bool prop option; [@option]
  wait_until_stable_timeout : string prop option; [@option]
  capacity_provider_strategy : capacity_provider_strategy list;
  load_balancer : load_balancer list;
  network_configuration : network_configuration list;
  scale : scale list;
  service_registries : service_registries list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_task_set) -> ()

let yojson_of_aws_ecs_task_set =
  (function
   | {
       cluster = v_cluster;
       external_id = v_external_id;
       force_delete = v_force_delete;
       id = v_id;
       launch_type = v_launch_type;
       platform_version = v_platform_version;
       service = v_service;
       tags = v_tags;
       tags_all = v_tags_all;
       task_definition = v_task_definition;
       wait_until_stable = v_wait_until_stable;
       wait_until_stable_timeout = v_wait_until_stable_timeout;
       capacity_provider_strategy = v_capacity_provider_strategy;
       load_balancer = v_load_balancer;
       network_configuration = v_network_configuration;
       scale = v_scale;
       service_registries = v_service_registries;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_service_registries
             v_service_registries
         in
         ("service_registries", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_scale v_scale in
         ("scale", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_configuration
             v_network_configuration
         in
         ("network_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_balancer v_load_balancer
         in
         ("load_balancer", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_capacity_provider_strategy
             v_capacity_provider_strategy
         in
         ("capacity_provider_strategy", arg) :: bnds
       in
       let bnds =
         match v_wait_until_stable_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wait_until_stable_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wait_until_stable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_until_stable", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_task_definition
         in
         ("task_definition", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_platform_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_type", arg in
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
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : aws_ecs_task_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_task_set

[@@@deriving.end]

let capacity_provider_strategy ?base ~capacity_provider ~weight () :
    capacity_provider_strategy =
  { base; capacity_provider; weight }

let load_balancer ?container_port ?load_balancer_name
    ?target_group_arn ~container_name () : load_balancer =
  {
    container_name;
    container_port;
    load_balancer_name;
    target_group_arn;
  }

let network_configuration ?assign_public_ip ?security_groups ~subnets
    () : network_configuration =
  { assign_public_ip; security_groups; subnets }

let scale ?unit ?value () : scale = { unit; value }

let service_registries ?container_name ?container_port ?port
    ~registry_arn () : service_registries =
  { container_name; container_port; port; registry_arn }

let aws_ecs_task_set ?external_id ?force_delete ?id ?launch_type
    ?platform_version ?tags ?tags_all ?wait_until_stable
    ?wait_until_stable_timeout ?(network_configuration = [])
    ?(scale = []) ?(service_registries = []) ~cluster ~service
    ~task_definition ~capacity_provider_strategy ~load_balancer () :
    aws_ecs_task_set =
  {
    cluster;
    external_id;
    force_delete;
    id;
    launch_type;
    platform_version;
    service;
    tags;
    tags_all;
    task_definition;
    wait_until_stable;
    wait_until_stable_timeout;
    capacity_provider_strategy;
    load_balancer;
    network_configuration;
    scale;
    service_registries;
  }

type t = {
  arn : string prop;
  cluster : string prop;
  external_id : string prop;
  force_delete : bool prop;
  id : string prop;
  launch_type : string prop;
  platform_version : string prop;
  service : string prop;
  stability_status : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  task_definition : string prop;
  task_set_id : string prop;
  wait_until_stable : bool prop;
  wait_until_stable_timeout : string prop;
}

let make ?external_id ?force_delete ?id ?launch_type
    ?platform_version ?tags ?tags_all ?wait_until_stable
    ?wait_until_stable_timeout ?(network_configuration = [])
    ?(scale = []) ?(service_registries = []) ~cluster ~service
    ~task_definition ~capacity_provider_strategy ~load_balancer __id
    =
  let __type = "aws_ecs_task_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster = Prop.computed __type __id "cluster";
       external_id = Prop.computed __type __id "external_id";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       launch_type = Prop.computed __type __id "launch_type";
       platform_version =
         Prop.computed __type __id "platform_version";
       service = Prop.computed __type __id "service";
       stability_status =
         Prop.computed __type __id "stability_status";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       task_definition = Prop.computed __type __id "task_definition";
       task_set_id = Prop.computed __type __id "task_set_id";
       wait_until_stable =
         Prop.computed __type __id "wait_until_stable";
       wait_until_stable_timeout =
         Prop.computed __type __id "wait_until_stable_timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_task_set
        (aws_ecs_task_set ?external_id ?force_delete ?id ?launch_type
           ?platform_version ?tags ?tags_all ?wait_until_stable
           ?wait_until_stable_timeout ~network_configuration ~scale
           ~service_registries ~cluster ~service ~task_definition
           ~capacity_provider_strategy ~load_balancer ());
    attrs = __attrs;
  }

let register ?tf_module ?external_id ?force_delete ?id ?launch_type
    ?platform_version ?tags ?tags_all ?wait_until_stable
    ?wait_until_stable_timeout ?(network_configuration = [])
    ?(scale = []) ?(service_registries = []) ~cluster ~service
    ~task_definition ~capacity_provider_strategy ~load_balancer __id
    =
  let (r : _ Tf_core.resource) =
    make ?external_id ?force_delete ?id ?launch_type
      ?platform_version ?tags ?tags_all ?wait_until_stable
      ?wait_until_stable_timeout ~network_configuration ~scale
      ~service_registries ~cluster ~service ~task_definition
      ~capacity_provider_strategy ~load_balancer __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
