(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity_provider_strategy = {
  base : float prop option; [@option]
  capacity_provider : string prop;
  weight : float prop option; [@option]
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
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
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

type network_configuration = {
  assign_public_ip : bool prop option; [@option]
  security_groups : string prop list option; [@option]
  subnets : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_subnets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnets
           in
           let bnd = "subnets", arg in
           bnd :: bnds
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

type overrides__container_overrides__environment = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : overrides__container_overrides__environment) -> ()

let yojson_of_overrides__container_overrides__environment =
  (function
   | { key = v_key; value = v_value } ->
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
       `Assoc bnds
    : overrides__container_overrides__environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_overrides__container_overrides__environment

[@@@deriving.end]

type overrides__container_overrides__resource_requirements = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : overrides__container_overrides__resource_requirements) ->
  ()

let yojson_of_overrides__container_overrides__resource_requirements =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : overrides__container_overrides__resource_requirements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_overrides__container_overrides__resource_requirements

[@@@deriving.end]

type overrides__container_overrides = {
  command : string prop list option; [@option]
  cpu : float prop option; [@option]
  memory : float prop option; [@option]
  memory_reservation : float prop option; [@option]
  name : string prop;
  environment : overrides__container_overrides__environment list;
      [@default []] [@yojson_drop_default ( = )]
  resource_requirements :
    overrides__container_overrides__resource_requirements list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : overrides__container_overrides) -> ()

let yojson_of_overrides__container_overrides =
  (function
   | {
       command = v_command;
       cpu = v_cpu;
       memory = v_memory;
       memory_reservation = v_memory_reservation;
       name = v_name;
       environment = v_environment;
       resource_requirements = v_resource_requirements;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_resource_requirements then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_overrides__container_overrides__resource_requirements)
               v_resource_requirements
           in
           let bnd = "resource_requirements", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_environment then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_overrides__container_overrides__environment)
               v_environment
           in
           let bnd = "environment", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_memory_reservation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_reservation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : overrides__container_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_overrides__container_overrides

[@@@deriving.end]

type overrides__inference_accelerator_overrides = {
  device_name : string prop option; [@option]
  device_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : overrides__inference_accelerator_overrides) -> ()

let yojson_of_overrides__inference_accelerator_overrides =
  (function
   | { device_name = v_device_name; device_type = v_device_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : overrides__inference_accelerator_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_overrides__inference_accelerator_overrides

[@@@deriving.end]

type overrides = {
  cpu : string prop option; [@option]
  execution_role_arn : string prop option; [@option]
  memory : string prop option; [@option]
  task_role_arn : string prop option; [@option]
  container_overrides : overrides__container_overrides list;
      [@default []] [@yojson_drop_default ( = )]
  inference_accelerator_overrides :
    overrides__inference_accelerator_overrides list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : overrides) -> ()

let yojson_of_overrides =
  (function
   | {
       cpu = v_cpu;
       execution_role_arn = v_execution_role_arn;
       memory = v_memory;
       task_role_arn = v_task_role_arn;
       container_overrides = v_container_overrides;
       inference_accelerator_overrides =
         v_inference_accelerator_overrides;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_inference_accelerator_overrides then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_overrides__inference_accelerator_overrides)
               v_inference_accelerator_overrides
           in
           let bnd = "inference_accelerator_overrides", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_container_overrides then bnds
         else
           let arg =
             (yojson_of_list yojson_of_overrides__container_overrides)
               v_container_overrides
           in
           let bnd = "container_overrides", arg in
           bnd :: bnds
       in
       let bnds =
         match v_task_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "task_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : overrides -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_overrides

[@@@deriving.end]

type placement_constraints = {
  expression : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement_constraints) -> ()

let yojson_of_placement_constraints =
  (function
   | { expression = v_expression; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement_constraints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement_constraints

[@@@deriving.end]

type placement_strategy = {
  field : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement_strategy) -> ()

let yojson_of_placement_strategy =
  (function
   | { field = v_field; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement_strategy

[@@@deriving.end]

type aws_ecs_task_execution = {
  client_token : string prop option; [@option]
  cluster : string prop;
  desired_count : float prop option; [@option]
  enable_ecs_managed_tags : bool prop option; [@option]
  enable_execute_command : bool prop option; [@option]
  group : string prop option; [@option]
  id : string prop option; [@option]
  launch_type : string prop option; [@option]
  platform_version : string prop option; [@option]
  propagate_tags : string prop option; [@option]
  reference_id : string prop option; [@option]
  started_by : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  task_definition : string prop;
  capacity_provider_strategy : capacity_provider_strategy list;
      [@default []] [@yojson_drop_default ( = )]
  network_configuration : network_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  overrides : overrides list;
      [@default []] [@yojson_drop_default ( = )]
  placement_constraints : placement_constraints list;
      [@default []] [@yojson_drop_default ( = )]
  placement_strategy : placement_strategy list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_task_execution) -> ()

let yojson_of_aws_ecs_task_execution =
  (function
   | {
       client_token = v_client_token;
       cluster = v_cluster;
       desired_count = v_desired_count;
       enable_ecs_managed_tags = v_enable_ecs_managed_tags;
       enable_execute_command = v_enable_execute_command;
       group = v_group;
       id = v_id;
       launch_type = v_launch_type;
       platform_version = v_platform_version;
       propagate_tags = v_propagate_tags;
       reference_id = v_reference_id;
       started_by = v_started_by;
       tags = v_tags;
       task_definition = v_task_definition;
       capacity_provider_strategy = v_capacity_provider_strategy;
       network_configuration = v_network_configuration;
       overrides = v_overrides;
       placement_constraints = v_placement_constraints;
       placement_strategy = v_placement_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_placement_strategy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_placement_strategy)
               v_placement_strategy
           in
           let bnd = "placement_strategy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_placement_constraints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_placement_constraints)
               v_placement_constraints
           in
           let bnd = "placement_constraints", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_overrides then bnds
         else
           let arg =
             (yojson_of_list yojson_of_overrides) v_overrides
           in
           let bnd = "overrides", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_network_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_configuration)
               v_network_configuration
           in
           let bnd = "network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_capacity_provider_strategy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_capacity_provider_strategy)
               v_capacity_provider_strategy
           in
           let bnd = "capacity_provider_strategy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_task_definition
         in
         ("task_definition", arg) :: bnds
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
         match v_started_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "started_by", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reference_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reference_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_propagate_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "propagate_tags", arg in
             bnd :: bnds
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
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_execute_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_execute_command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ecs_managed_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ecs_managed_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       let bnds =
         match v_client_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecs_task_execution -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_task_execution

[@@@deriving.end]

let capacity_provider_strategy ?base ?weight ~capacity_provider () :
    capacity_provider_strategy =
  { base; capacity_provider; weight }

let network_configuration ?assign_public_ip ?security_groups ~subnets
    () : network_configuration =
  { assign_public_ip; security_groups; subnets }

let overrides__container_overrides__environment ~key ~value () :
    overrides__container_overrides__environment =
  { key; value }

let overrides__container_overrides__resource_requirements ~type_
    ~value () : overrides__container_overrides__resource_requirements
    =
  { type_; value }

let overrides__container_overrides ?command ?cpu ?memory
    ?memory_reservation ~name ~environment ~resource_requirements ()
    : overrides__container_overrides =
  {
    command;
    cpu;
    memory;
    memory_reservation;
    name;
    environment;
    resource_requirements;
  }

let overrides__inference_accelerator_overrides ?device_name
    ?device_type () : overrides__inference_accelerator_overrides =
  { device_name; device_type }

let overrides ?cpu ?execution_role_arn ?memory ?task_role_arn
    ?(container_overrides = []) ~inference_accelerator_overrides () :
    overrides =
  {
    cpu;
    execution_role_arn;
    memory;
    task_role_arn;
    container_overrides;
    inference_accelerator_overrides;
  }

let placement_constraints ?expression ~type_ () :
    placement_constraints =
  { expression; type_ }

let placement_strategy ?field ~type_ () : placement_strategy =
  { field; type_ }

let aws_ecs_task_execution ?client_token ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command ?group ?id
    ?launch_type ?platform_version ?propagate_tags ?reference_id
    ?started_by ?tags ?(network_configuration = []) ?(overrides = [])
    ?(placement_strategy = []) ~cluster ~task_definition
    ~capacity_provider_strategy ~placement_constraints () :
    aws_ecs_task_execution =
  {
    client_token;
    cluster;
    desired_count;
    enable_ecs_managed_tags;
    enable_execute_command;
    group;
    id;
    launch_type;
    platform_version;
    propagate_tags;
    reference_id;
    started_by;
    tags;
    task_definition;
    capacity_provider_strategy;
    network_configuration;
    overrides;
    placement_constraints;
    placement_strategy;
  }

type t = {
  tf_name : string;
  client_token : string prop;
  cluster : string prop;
  desired_count : float prop;
  enable_ecs_managed_tags : bool prop;
  enable_execute_command : bool prop;
  group : string prop;
  id : string prop;
  launch_type : string prop;
  platform_version : string prop;
  propagate_tags : string prop;
  reference_id : string prop;
  started_by : string prop;
  tags : (string * string) list prop;
  task_arns : string list prop;
  task_definition : string prop;
}

let make ?client_token ?desired_count ?enable_ecs_managed_tags
    ?enable_execute_command ?group ?id ?launch_type ?platform_version
    ?propagate_tags ?reference_id ?started_by ?tags
    ?(network_configuration = []) ?(overrides = [])
    ?(placement_strategy = []) ~cluster ~task_definition
    ~capacity_provider_strategy ~placement_constraints __id =
  let __type = "aws_ecs_task_execution" in
  let __attrs =
    ({
       tf_name = __id;
       client_token = Prop.computed __type __id "client_token";
       cluster = Prop.computed __type __id "cluster";
       desired_count = Prop.computed __type __id "desired_count";
       enable_ecs_managed_tags =
         Prop.computed __type __id "enable_ecs_managed_tags";
       enable_execute_command =
         Prop.computed __type __id "enable_execute_command";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       launch_type = Prop.computed __type __id "launch_type";
       platform_version =
         Prop.computed __type __id "platform_version";
       propagate_tags = Prop.computed __type __id "propagate_tags";
       reference_id = Prop.computed __type __id "reference_id";
       started_by = Prop.computed __type __id "started_by";
       tags = Prop.computed __type __id "tags";
       task_arns = Prop.computed __type __id "task_arns";
       task_definition = Prop.computed __type __id "task_definition";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_task_execution
        (aws_ecs_task_execution ?client_token ?desired_count
           ?enable_ecs_managed_tags ?enable_execute_command ?group
           ?id ?launch_type ?platform_version ?propagate_tags
           ?reference_id ?started_by ?tags ~network_configuration
           ~overrides ~placement_strategy ~cluster ~task_definition
           ~capacity_provider_strategy ~placement_constraints ());
    attrs = __attrs;
  }

let register ?tf_module ?client_token ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command ?group ?id
    ?launch_type ?platform_version ?propagate_tags ?reference_id
    ?started_by ?tags ?(network_configuration = []) ?(overrides = [])
    ?(placement_strategy = []) ~cluster ~task_definition
    ~capacity_provider_strategy ~placement_constraints __id =
  let (r : _ Tf_core.resource) =
    make ?client_token ?desired_count ?enable_ecs_managed_tags
      ?enable_execute_command ?group ?id ?launch_type
      ?platform_version ?propagate_tags ?reference_id ?started_by
      ?tags ~network_configuration ~overrides ~placement_strategy
      ~cluster ~task_definition ~capacity_provider_strategy
      ~placement_constraints __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
