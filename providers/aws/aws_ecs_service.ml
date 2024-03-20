(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alarms = {
  alarm_names : string prop list;  (** alarm_names *)
  enable : bool prop;  (** enable *)
  rollback : bool prop;  (** rollback *)
}
[@@deriving yojson_of]
(** alarms *)

type capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** capacity_provider_strategy *)

type deployment_circuit_breaker = {
  enable : bool prop;  (** enable *)
  rollback : bool prop;  (** rollback *)
}
[@@deriving yojson_of]
(** deployment_circuit_breaker *)

type deployment_controller = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** deployment_controller *)

type load_balancer = {
  container_name : string prop;  (** container_name *)
  container_port : float prop;  (** container_port *)
  elb_name : string prop option; [@option]  (** elb_name *)
  target_group_arn : string prop option; [@option]
      (** target_group_arn *)
}
[@@deriving yojson_of]
(** load_balancer *)

type network_configuration = {
  assign_public_ip : bool prop option; [@option]
      (** assign_public_ip *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** network_configuration *)

type ordered_placement_strategy = {
  field : string prop option; [@option]  (** field *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** ordered_placement_strategy *)

type placement_constraints = {
  expression : string prop option; [@option]  (** expression *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** placement_constraints *)

type service_connect_configuration__log_configuration__secret_option = {
  name : string prop;  (** name *)
  value_from : string prop;  (** value_from *)
}
[@@deriving yojson_of]
(** service_connect_configuration__log_configuration__secret_option *)

type service_connect_configuration__log_configuration = {
  log_driver : string prop;  (** log_driver *)
  options : (string * string prop) list option; [@option]
      (** options *)
  secret_option :
    service_connect_configuration__log_configuration__secret_option
    list;
}
[@@deriving yojson_of]
(** service_connect_configuration__log_configuration *)

type service_connect_configuration__service__client_alias = {
  dns_name : string prop option; [@option]  (** dns_name *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** service_connect_configuration__service__client_alias *)

type service_connect_configuration__service__timeout = {
  idle_timeout_seconds : float prop option; [@option]
      (** idle_timeout_seconds *)
  per_request_timeout_seconds : float prop option; [@option]
      (** per_request_timeout_seconds *)
}
[@@deriving yojson_of]
(** service_connect_configuration__service__timeout *)

type service_connect_configuration__service__tls__issuer_cert_authority = {
  aws_pca_authority_arn : string prop;  (** aws_pca_authority_arn *)
}
[@@deriving yojson_of]
(** service_connect_configuration__service__tls__issuer_cert_authority *)

type service_connect_configuration__service__tls = {
  kms_key : string prop option; [@option]  (** kms_key *)
  role_arn : string prop option; [@option]  (** role_arn *)
  issuer_cert_authority :
    service_connect_configuration__service__tls__issuer_cert_authority
    list;
}
[@@deriving yojson_of]
(** service_connect_configuration__service__tls *)

type service_connect_configuration__service = {
  discovery_name : string prop option; [@option]
      (** discovery_name *)
  ingress_port_override : float prop option; [@option]
      (** ingress_port_override *)
  port_name : string prop;  (** port_name *)
  client_alias :
    service_connect_configuration__service__client_alias list;
  timeout : service_connect_configuration__service__timeout list;
  tls : service_connect_configuration__service__tls list;
}
[@@deriving yojson_of]
(** service_connect_configuration__service *)

type service_connect_configuration = {
  enabled : bool prop;  (** enabled *)
  namespace : string prop option; [@option]  (** namespace *)
  log_configuration :
    service_connect_configuration__log_configuration list;
  service : service_connect_configuration__service list;
}
[@@deriving yojson_of]
(** service_connect_configuration *)

type service_registries = {
  container_name : string prop option; [@option]
      (** container_name *)
  container_port : float prop option; [@option]
      (** container_port *)
  port : float prop option; [@option]  (** port *)
  registry_arn : string prop;  (** registry_arn *)
}
[@@deriving yojson_of]
(** service_registries *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ecs_service = {
  cluster : string prop option; [@option]  (** cluster *)
  deployment_maximum_percent : float prop option; [@option]
      (** deployment_maximum_percent *)
  deployment_minimum_healthy_percent : float prop option; [@option]
      (** deployment_minimum_healthy_percent *)
  desired_count : float prop option; [@option]  (** desired_count *)
  enable_ecs_managed_tags : bool prop option; [@option]
      (** enable_ecs_managed_tags *)
  enable_execute_command : bool prop option; [@option]
      (** enable_execute_command *)
  force_new_deployment : bool prop option; [@option]
      (** force_new_deployment *)
  health_check_grace_period_seconds : float prop option; [@option]
      (** health_check_grace_period_seconds *)
  iam_role : string prop option; [@option]  (** iam_role *)
  id : string prop option; [@option]  (** id *)
  launch_type : string prop option; [@option]  (** launch_type *)
  name : string prop;  (** name *)
  platform_version : string prop option; [@option]
      (** platform_version *)
  propagate_tags : string prop option; [@option]
      (** propagate_tags *)
  scheduling_strategy : string prop option; [@option]
      (** scheduling_strategy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  task_definition : string prop option; [@option]
      (** task_definition *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
  wait_for_steady_state : bool prop option; [@option]
      (** wait_for_steady_state *)
  alarms : alarms list;
  capacity_provider_strategy : capacity_provider_strategy list;
  deployment_circuit_breaker : deployment_circuit_breaker list;
  deployment_controller : deployment_controller list;
  load_balancer : load_balancer list;
  network_configuration : network_configuration list;
  ordered_placement_strategy : ordered_placement_strategy list;
  placement_constraints : placement_constraints list;
  service_connect_configuration : service_connect_configuration list;
  service_registries : service_registries list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ecs_service *)

let alarms ~alarm_names ~enable ~rollback () : alarms =
  { alarm_names; enable; rollback }

let capacity_provider_strategy ?base ?weight ~capacity_provider () :
    capacity_provider_strategy =
  { base; capacity_provider; weight }

let deployment_circuit_breaker ~enable ~rollback () :
    deployment_circuit_breaker =
  { enable; rollback }

let deployment_controller ?type_ () : deployment_controller =
  { type_ }

let load_balancer ?elb_name ?target_group_arn ~container_name
    ~container_port () : load_balancer =
  { container_name; container_port; elb_name; target_group_arn }

let network_configuration ?assign_public_ip ?security_groups ~subnets
    () : network_configuration =
  { assign_public_ip; security_groups; subnets }

let ordered_placement_strategy ?field ~type_ () :
    ordered_placement_strategy =
  { field; type_ }

let placement_constraints ?expression ~type_ () :
    placement_constraints =
  { expression; type_ }

let service_connect_configuration__log_configuration__secret_option
    ~name ~value_from () :
    service_connect_configuration__log_configuration__secret_option =
  { name; value_from }

let service_connect_configuration__log_configuration ?options
    ~log_driver ~secret_option () :
    service_connect_configuration__log_configuration =
  { log_driver; options; secret_option }

let service_connect_configuration__service__client_alias ?dns_name
    ~port () : service_connect_configuration__service__client_alias =
  { dns_name; port }

let service_connect_configuration__service__timeout
    ?idle_timeout_seconds ?per_request_timeout_seconds () :
    service_connect_configuration__service__timeout =
  { idle_timeout_seconds; per_request_timeout_seconds }

let service_connect_configuration__service__tls__issuer_cert_authority
    ~aws_pca_authority_arn () :
    service_connect_configuration__service__tls__issuer_cert_authority
    =
  { aws_pca_authority_arn }

let service_connect_configuration__service__tls ?kms_key ?role_arn
    ~issuer_cert_authority () :
    service_connect_configuration__service__tls =
  { kms_key; role_arn; issuer_cert_authority }

let service_connect_configuration__service ?discovery_name
    ?ingress_port_override ~port_name ~client_alias ~timeout ~tls ()
    : service_connect_configuration__service =
  {
    discovery_name;
    ingress_port_override;
    port_name;
    client_alias;
    timeout;
    tls;
  }

let service_connect_configuration ?namespace ~enabled
    ~log_configuration ~service () : service_connect_configuration =
  { enabled; namespace; log_configuration; service }

let service_registries ?container_name ?container_port ?port
    ~registry_arn () : service_registries =
  { container_name; container_port; port; registry_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ecs_service ?cluster ?deployment_maximum_percent
    ?deployment_minimum_healthy_percent ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command
    ?force_new_deployment ?health_check_grace_period_seconds
    ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
    ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
    ?wait_for_steady_state ?timeouts ~name ~alarms
    ~capacity_provider_strategy ~deployment_circuit_breaker
    ~deployment_controller ~load_balancer ~network_configuration
    ~ordered_placement_strategy ~placement_constraints
    ~service_connect_configuration ~service_registries () :
    aws_ecs_service =
  {
    cluster;
    deployment_maximum_percent;
    deployment_minimum_healthy_percent;
    desired_count;
    enable_ecs_managed_tags;
    enable_execute_command;
    force_new_deployment;
    health_check_grace_period_seconds;
    iam_role;
    id;
    launch_type;
    name;
    platform_version;
    propagate_tags;
    scheduling_strategy;
    tags;
    tags_all;
    task_definition;
    triggers;
    wait_for_steady_state;
    alarms;
    capacity_provider_strategy;
    deployment_circuit_breaker;
    deployment_controller;
    load_balancer;
    network_configuration;
    ordered_placement_strategy;
    placement_constraints;
    service_connect_configuration;
    service_registries;
    timeouts;
  }

type t = {
  cluster : string prop;
  deployment_maximum_percent : float prop;
  deployment_minimum_healthy_percent : float prop;
  desired_count : float prop;
  enable_ecs_managed_tags : bool prop;
  enable_execute_command : bool prop;
  force_new_deployment : bool prop;
  health_check_grace_period_seconds : float prop;
  iam_role : string prop;
  id : string prop;
  launch_type : string prop;
  name : string prop;
  platform_version : string prop;
  propagate_tags : string prop;
  scheduling_strategy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  task_definition : string prop;
  triggers : (string * string) list prop;
  wait_for_steady_state : bool prop;
}

let make ?cluster ?deployment_maximum_percent
    ?deployment_minimum_healthy_percent ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command
    ?force_new_deployment ?health_check_grace_period_seconds
    ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
    ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
    ?wait_for_steady_state ?timeouts ~name ~alarms
    ~capacity_provider_strategy ~deployment_circuit_breaker
    ~deployment_controller ~load_balancer ~network_configuration
    ~ordered_placement_strategy ~placement_constraints
    ~service_connect_configuration ~service_registries __id =
  let __type = "aws_ecs_service" in
  let __attrs =
    ({
       cluster = Prop.computed __type __id "cluster";
       deployment_maximum_percent =
         Prop.computed __type __id "deployment_maximum_percent";
       deployment_minimum_healthy_percent =
         Prop.computed __type __id
           "deployment_minimum_healthy_percent";
       desired_count = Prop.computed __type __id "desired_count";
       enable_ecs_managed_tags =
         Prop.computed __type __id "enable_ecs_managed_tags";
       enable_execute_command =
         Prop.computed __type __id "enable_execute_command";
       force_new_deployment =
         Prop.computed __type __id "force_new_deployment";
       health_check_grace_period_seconds =
         Prop.computed __type __id
           "health_check_grace_period_seconds";
       iam_role = Prop.computed __type __id "iam_role";
       id = Prop.computed __type __id "id";
       launch_type = Prop.computed __type __id "launch_type";
       name = Prop.computed __type __id "name";
       platform_version =
         Prop.computed __type __id "platform_version";
       propagate_tags = Prop.computed __type __id "propagate_tags";
       scheduling_strategy =
         Prop.computed __type __id "scheduling_strategy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       task_definition = Prop.computed __type __id "task_definition";
       triggers = Prop.computed __type __id "triggers";
       wait_for_steady_state =
         Prop.computed __type __id "wait_for_steady_state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_service
        (aws_ecs_service ?cluster ?deployment_maximum_percent
           ?deployment_minimum_healthy_percent ?desired_count
           ?enable_ecs_managed_tags ?enable_execute_command
           ?force_new_deployment ?health_check_grace_period_seconds
           ?iam_role ?id ?launch_type ?platform_version
           ?propagate_tags ?scheduling_strategy ?tags ?tags_all
           ?task_definition ?triggers ?wait_for_steady_state
           ?timeouts ~name ~alarms ~capacity_provider_strategy
           ~deployment_circuit_breaker ~deployment_controller
           ~load_balancer ~network_configuration
           ~ordered_placement_strategy ~placement_constraints
           ~service_connect_configuration ~service_registries ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster ?deployment_maximum_percent
    ?deployment_minimum_healthy_percent ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command
    ?force_new_deployment ?health_check_grace_period_seconds
    ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
    ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
    ?wait_for_steady_state ?timeouts ~name ~alarms
    ~capacity_provider_strategy ~deployment_circuit_breaker
    ~deployment_controller ~load_balancer ~network_configuration
    ~ordered_placement_strategy ~placement_constraints
    ~service_connect_configuration ~service_registries __id =
  let (r : _ Tf_core.resource) =
    make ?cluster ?deployment_maximum_percent
      ?deployment_minimum_healthy_percent ?desired_count
      ?enable_ecs_managed_tags ?enable_execute_command
      ?force_new_deployment ?health_check_grace_period_seconds
      ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
      ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
      ?wait_for_steady_state ?timeouts ~name ~alarms
      ~capacity_provider_strategy ~deployment_circuit_breaker
      ~deployment_controller ~load_balancer ~network_configuration
      ~ordered_placement_strategy ~placement_constraints
      ~service_connect_configuration ~service_registries __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
