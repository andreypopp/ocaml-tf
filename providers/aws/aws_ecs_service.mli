(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type alarms

val alarms :
  alarm_names:string prop list ->
  enable:bool prop ->
  rollback:bool prop ->
  unit ->
  alarms

type capacity_provider_strategy

val capacity_provider_strategy :
  ?base:float prop ->
  ?weight:float prop ->
  capacity_provider:string prop ->
  unit ->
  capacity_provider_strategy

type deployment_circuit_breaker

val deployment_circuit_breaker :
  enable:bool prop ->
  rollback:bool prop ->
  unit ->
  deployment_circuit_breaker

type deployment_controller

val deployment_controller :
  ?type_:string prop -> unit -> deployment_controller

type load_balancer

val load_balancer :
  ?elb_name:string prop ->
  ?target_group_arn:string prop ->
  container_name:string prop ->
  container_port:float prop ->
  unit ->
  load_balancer

type network_configuration

val network_configuration :
  ?assign_public_ip:bool prop ->
  ?security_groups:string prop list ->
  subnets:string prop list ->
  unit ->
  network_configuration

type ordered_placement_strategy

val ordered_placement_strategy :
  ?field:string prop ->
  type_:string prop ->
  unit ->
  ordered_placement_strategy

type placement_constraints

val placement_constraints :
  ?expression:string prop ->
  type_:string prop ->
  unit ->
  placement_constraints

type service_connect_configuration__log_configuration__secret_option

val service_connect_configuration__log_configuration__secret_option :
  name:string prop ->
  value_from:string prop ->
  unit ->
  service_connect_configuration__log_configuration__secret_option

type service_connect_configuration__log_configuration

val service_connect_configuration__log_configuration :
  ?options:string prop Tf_core.assoc ->
  ?secret_option:
    service_connect_configuration__log_configuration__secret_option
    list ->
  log_driver:string prop ->
  unit ->
  service_connect_configuration__log_configuration

type service_connect_configuration__service__client_alias

val service_connect_configuration__service__client_alias :
  ?dns_name:string prop ->
  port:float prop ->
  unit ->
  service_connect_configuration__service__client_alias

type service_connect_configuration__service__timeout

val service_connect_configuration__service__timeout :
  ?idle_timeout_seconds:float prop ->
  ?per_request_timeout_seconds:float prop ->
  unit ->
  service_connect_configuration__service__timeout

type service_connect_configuration__service__tls__issuer_cert_authority

val service_connect_configuration__service__tls__issuer_cert_authority :
  aws_pca_authority_arn:string prop ->
  unit ->
  service_connect_configuration__service__tls__issuer_cert_authority

type service_connect_configuration__service__tls

val service_connect_configuration__service__tls :
  ?kms_key:string prop ->
  ?role_arn:string prop ->
  issuer_cert_authority:
    service_connect_configuration__service__tls__issuer_cert_authority
    list ->
  unit ->
  service_connect_configuration__service__tls

type service_connect_configuration__service

val service_connect_configuration__service :
  ?discovery_name:string prop ->
  ?ingress_port_override:float prop ->
  ?client_alias:
    service_connect_configuration__service__client_alias list ->
  ?timeout:service_connect_configuration__service__timeout list ->
  ?tls:service_connect_configuration__service__tls list ->
  port_name:string prop ->
  unit ->
  service_connect_configuration__service

type service_connect_configuration

val service_connect_configuration :
  ?namespace:string prop ->
  ?log_configuration:
    service_connect_configuration__log_configuration list ->
  ?service:service_connect_configuration__service list ->
  enabled:bool prop ->
  unit ->
  service_connect_configuration

type service_registries

val service_registries :
  ?container_name:string prop ->
  ?container_port:float prop ->
  ?port:float prop ->
  registry_arn:string prop ->
  unit ->
  service_registries

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type volume_configuration__managed_ebs_volume

val volume_configuration__managed_ebs_volume :
  ?encrypted:bool prop ->
  ?file_system_type:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?size_in_gb:float prop ->
  ?snapshot_id:string prop ->
  ?throughput:float prop ->
  ?volume_type:string prop ->
  role_arn:string prop ->
  unit ->
  volume_configuration__managed_ebs_volume

type volume_configuration

val volume_configuration :
  name:string prop ->
  managed_ebs_volume:volume_configuration__managed_ebs_volume list ->
  unit ->
  volume_configuration

type aws_ecs_service

val aws_ecs_service :
  ?cluster:string prop ->
  ?deployment_maximum_percent:float prop ->
  ?deployment_minimum_healthy_percent:float prop ->
  ?desired_count:float prop ->
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?force_new_deployment:bool prop ->
  ?health_check_grace_period_seconds:float prop ->
  ?iam_role:string prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?scheduling_strategy:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?task_definition:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  ?wait_for_steady_state:bool prop ->
  ?alarms:alarms list ->
  ?deployment_circuit_breaker:deployment_circuit_breaker list ->
  ?deployment_controller:deployment_controller list ->
  ?network_configuration:network_configuration list ->
  ?ordered_placement_strategy:ordered_placement_strategy list ->
  ?service_connect_configuration:service_connect_configuration list ->
  ?service_registries:service_registries list ->
  ?timeouts:timeouts ->
  ?volume_configuration:volume_configuration list ->
  name:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  load_balancer:load_balancer list ->
  placement_constraints:placement_constraints list ->
  unit ->
  aws_ecs_service

val yojson_of_aws_ecs_service : aws_ecs_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  task_definition : string prop;
  triggers : string Tf_core.assoc prop;
  wait_for_steady_state : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?cluster:string prop ->
  ?deployment_maximum_percent:float prop ->
  ?deployment_minimum_healthy_percent:float prop ->
  ?desired_count:float prop ->
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?force_new_deployment:bool prop ->
  ?health_check_grace_period_seconds:float prop ->
  ?iam_role:string prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?scheduling_strategy:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?task_definition:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  ?wait_for_steady_state:bool prop ->
  ?alarms:alarms list ->
  ?deployment_circuit_breaker:deployment_circuit_breaker list ->
  ?deployment_controller:deployment_controller list ->
  ?network_configuration:network_configuration list ->
  ?ordered_placement_strategy:ordered_placement_strategy list ->
  ?service_connect_configuration:service_connect_configuration list ->
  ?service_registries:service_registries list ->
  ?timeouts:timeouts ->
  ?volume_configuration:volume_configuration list ->
  name:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  load_balancer:load_balancer list ->
  placement_constraints:placement_constraints list ->
  string ->
  t

val make :
  ?cluster:string prop ->
  ?deployment_maximum_percent:float prop ->
  ?deployment_minimum_healthy_percent:float prop ->
  ?desired_count:float prop ->
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?force_new_deployment:bool prop ->
  ?health_check_grace_period_seconds:float prop ->
  ?iam_role:string prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?scheduling_strategy:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?task_definition:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  ?wait_for_steady_state:bool prop ->
  ?alarms:alarms list ->
  ?deployment_circuit_breaker:deployment_circuit_breaker list ->
  ?deployment_controller:deployment_controller list ->
  ?network_configuration:network_configuration list ->
  ?ordered_placement_strategy:ordered_placement_strategy list ->
  ?service_connect_configuration:service_connect_configuration list ->
  ?service_registries:service_registries list ->
  ?timeouts:timeouts ->
  ?volume_configuration:volume_configuration list ->
  name:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  load_balancer:load_balancer list ->
  placement_constraints:placement_constraints list ->
  string ->
  t Tf_core.resource
