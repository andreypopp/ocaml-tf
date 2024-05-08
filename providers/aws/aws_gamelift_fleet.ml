(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certificate_configuration = {
  certificate_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_configuration) -> ()

let yojson_of_certificate_configuration =
  (function
   | { certificate_type = v_certificate_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_certificate_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : certificate_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_configuration

[@@@deriving.end]

type ec2_inbound_permission = {
  from_port : float prop;
  ip_range : string prop;
  protocol : string prop;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ec2_inbound_permission) -> ()

let yojson_of_ec2_inbound_permission =
  (function
   | {
       from_port = v_from_port;
       ip_range = v_ip_range;
       protocol = v_protocol;
       to_port = v_to_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_port in
         ("to_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_range in
         ("ip_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       `Assoc bnds
    : ec2_inbound_permission -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ec2_inbound_permission

[@@@deriving.end]

type resource_creation_limit_policy = {
  new_game_sessions_per_creator : float prop option; [@option]
  policy_period_in_minutes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_creation_limit_policy) -> ()

let yojson_of_resource_creation_limit_policy =
  (function
   | {
       new_game_sessions_per_creator =
         v_new_game_sessions_per_creator;
       policy_period_in_minutes = v_policy_period_in_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy_period_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "policy_period_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_new_game_sessions_per_creator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "new_game_sessions_per_creator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resource_creation_limit_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_creation_limit_policy

[@@@deriving.end]

type runtime_configuration__server_process = {
  concurrent_executions : float prop;
  launch_path : string prop;
  parameters : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : runtime_configuration__server_process) -> ()

let yojson_of_runtime_configuration__server_process =
  (function
   | {
       concurrent_executions = v_concurrent_executions;
       launch_path = v_launch_path;
       parameters = v_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_launch_path in
         ("launch_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_concurrent_executions
         in
         ("concurrent_executions", arg) :: bnds
       in
       `Assoc bnds
    : runtime_configuration__server_process ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_runtime_configuration__server_process

[@@@deriving.end]

type runtime_configuration = {
  game_session_activation_timeout_seconds : float prop option;
      [@option]
  max_concurrent_game_session_activations : float prop option;
      [@option]
  server_process : runtime_configuration__server_process list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : runtime_configuration) -> ()

let yojson_of_runtime_configuration =
  (function
   | {
       game_session_activation_timeout_seconds =
         v_game_session_activation_timeout_seconds;
       max_concurrent_game_session_activations =
         v_max_concurrent_game_session_activations;
       server_process = v_server_process;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_server_process then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_runtime_configuration__server_process)
               v_server_process
           in
           let bnd = "server_process", arg in
           bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_game_session_activations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "max_concurrent_game_session_activations", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_game_session_activation_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "game_session_activation_timeout_seconds", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : runtime_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_runtime_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_gamelift_fleet = {
  build_id : string prop option; [@option]
  description : string prop option; [@option]
  ec2_instance_type : string prop;
  fleet_type : string prop option; [@option]
  id : string prop option; [@option]
  instance_role_arn : string prop option; [@option]
  metric_groups : string prop list option; [@option]
  name : string prop;
  new_game_session_protection_policy : string prop option; [@option]
  script_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  certificate_configuration : certificate_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  ec2_inbound_permission : ec2_inbound_permission list;
      [@default []] [@yojson_drop_default ( = )]
  resource_creation_limit_policy :
    resource_creation_limit_policy list;
      [@default []] [@yojson_drop_default ( = )]
  runtime_configuration : runtime_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_gamelift_fleet) -> ()

let yojson_of_aws_gamelift_fleet =
  (function
   | {
       build_id = v_build_id;
       description = v_description;
       ec2_instance_type = v_ec2_instance_type;
       fleet_type = v_fleet_type;
       id = v_id;
       instance_role_arn = v_instance_role_arn;
       metric_groups = v_metric_groups;
       name = v_name;
       new_game_session_protection_policy =
         v_new_game_session_protection_policy;
       script_id = v_script_id;
       tags = v_tags;
       tags_all = v_tags_all;
       certificate_configuration = v_certificate_configuration;
       ec2_inbound_permission = v_ec2_inbound_permission;
       resource_creation_limit_policy =
         v_resource_creation_limit_policy;
       runtime_configuration = v_runtime_configuration;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_runtime_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_runtime_configuration)
               v_runtime_configuration
           in
           let bnd = "runtime_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resource_creation_limit_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resource_creation_limit_policy)
               v_resource_creation_limit_policy
           in
           let bnd = "resource_creation_limit_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ec2_inbound_permission then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ec2_inbound_permission)
               v_ec2_inbound_permission
           in
           let bnd = "ec2_inbound_permission", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_certificate_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_certificate_configuration)
               v_certificate_configuration
           in
           let bnd = "certificate_configuration", arg in
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
         match v_script_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_new_game_session_protection_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "new_game_session_protection_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metric_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "metric_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_role_arn", arg in
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
         match v_fleet_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fleet_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ec2_instance_type
         in
         ("ec2_instance_type", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_gamelift_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_gamelift_fleet

[@@@deriving.end]

let certificate_configuration ?certificate_type () :
    certificate_configuration =
  { certificate_type }

let ec2_inbound_permission ~from_port ~ip_range ~protocol ~to_port ()
    : ec2_inbound_permission =
  { from_port; ip_range; protocol; to_port }

let resource_creation_limit_policy ?new_game_sessions_per_creator
    ?policy_period_in_minutes () : resource_creation_limit_policy =
  { new_game_sessions_per_creator; policy_period_in_minutes }

let runtime_configuration__server_process ?parameters
    ~concurrent_executions ~launch_path () :
    runtime_configuration__server_process =
  { concurrent_executions; launch_path; parameters }

let runtime_configuration ?game_session_activation_timeout_seconds
    ?max_concurrent_game_session_activations ?(server_process = [])
    () : runtime_configuration =
  {
    game_session_activation_timeout_seconds;
    max_concurrent_game_session_activations;
    server_process;
  }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_gamelift_fleet ?build_id ?description ?fleet_type ?id
    ?instance_role_arn ?metric_groups
    ?new_game_session_protection_policy ?script_id ?tags ?tags_all
    ?(certificate_configuration = [])
    ?(resource_creation_limit_policy = [])
    ?(runtime_configuration = []) ?timeouts ~ec2_instance_type ~name
    ~ec2_inbound_permission () : aws_gamelift_fleet =
  {
    build_id;
    description;
    ec2_instance_type;
    fleet_type;
    id;
    instance_role_arn;
    metric_groups;
    name;
    new_game_session_protection_policy;
    script_id;
    tags;
    tags_all;
    certificate_configuration;
    ec2_inbound_permission;
    resource_creation_limit_policy;
    runtime_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  build_arn : string prop;
  build_id : string prop;
  description : string prop;
  ec2_instance_type : string prop;
  fleet_type : string prop;
  id : string prop;
  instance_role_arn : string prop;
  log_paths : string list prop;
  metric_groups : string list prop;
  name : string prop;
  new_game_session_protection_policy : string prop;
  operating_system : string prop;
  script_arn : string prop;
  script_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?build_id ?description ?fleet_type ?id ?instance_role_arn
    ?metric_groups ?new_game_session_protection_policy ?script_id
    ?tags ?tags_all ?(certificate_configuration = [])
    ?(resource_creation_limit_policy = [])
    ?(runtime_configuration = []) ?timeouts ~ec2_instance_type ~name
    ~ec2_inbound_permission __id =
  let __type = "aws_gamelift_fleet" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       build_arn = Prop.computed __type __id "build_arn";
       build_id = Prop.computed __type __id "build_id";
       description = Prop.computed __type __id "description";
       ec2_instance_type =
         Prop.computed __type __id "ec2_instance_type";
       fleet_type = Prop.computed __type __id "fleet_type";
       id = Prop.computed __type __id "id";
       instance_role_arn =
         Prop.computed __type __id "instance_role_arn";
       log_paths = Prop.computed __type __id "log_paths";
       metric_groups = Prop.computed __type __id "metric_groups";
       name = Prop.computed __type __id "name";
       new_game_session_protection_policy =
         Prop.computed __type __id
           "new_game_session_protection_policy";
       operating_system =
         Prop.computed __type __id "operating_system";
       script_arn = Prop.computed __type __id "script_arn";
       script_id = Prop.computed __type __id "script_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_gamelift_fleet
        (aws_gamelift_fleet ?build_id ?description ?fleet_type ?id
           ?instance_role_arn ?metric_groups
           ?new_game_session_protection_policy ?script_id ?tags
           ?tags_all ~certificate_configuration
           ~resource_creation_limit_policy ~runtime_configuration
           ?timeouts ~ec2_instance_type ~name ~ec2_inbound_permission
           ());
    attrs = __attrs;
  }

let register ?tf_module ?build_id ?description ?fleet_type ?id
    ?instance_role_arn ?metric_groups
    ?new_game_session_protection_policy ?script_id ?tags ?tags_all
    ?(certificate_configuration = [])
    ?(resource_creation_limit_policy = [])
    ?(runtime_configuration = []) ?timeouts ~ec2_instance_type ~name
    ~ec2_inbound_permission __id =
  let (r : _ Tf_core.resource) =
    make ?build_id ?description ?fleet_type ?id ?instance_role_arn
      ?metric_groups ?new_game_session_protection_policy ?script_id
      ?tags ?tags_all ~certificate_configuration
      ~resource_creation_limit_policy ~runtime_configuration
      ?timeouts ~ec2_instance_type ~name ~ec2_inbound_permission __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
