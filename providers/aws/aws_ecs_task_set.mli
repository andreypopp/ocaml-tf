(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type capacity_provider_strategy

val capacity_provider_strategy :
  ?base:float prop ->
  capacity_provider:string prop ->
  weight:float prop ->
  unit ->
  capacity_provider_strategy

type load_balancer

val load_balancer :
  ?container_port:float prop ->
  ?load_balancer_name:string prop ->
  ?target_group_arn:string prop ->
  container_name:string prop ->
  unit ->
  load_balancer

type network_configuration

val network_configuration :
  ?assign_public_ip:bool prop ->
  ?security_groups:string prop list ->
  subnets:string prop list ->
  unit ->
  network_configuration

type scale

val scale : ?unit:string prop -> ?value:float prop -> unit -> scale

type service_registries

val service_registries :
  ?container_name:string prop ->
  ?container_port:float prop ->
  ?port:float prop ->
  registry_arn:string prop ->
  unit ->
  service_registries

type aws_ecs_task_set

val aws_ecs_task_set :
  ?external_id:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?wait_until_stable:bool prop ->
  ?wait_until_stable_timeout:string prop ->
  ?network_configuration:network_configuration list ->
  ?scale:scale list ->
  ?service_registries:service_registries list ->
  cluster:string prop ->
  service:string prop ->
  task_definition:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  load_balancer:load_balancer list ->
  unit ->
  aws_ecs_task_set

val yojson_of_aws_ecs_task_set : aws_ecs_task_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?external_id:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?wait_until_stable:bool prop ->
  ?wait_until_stable_timeout:string prop ->
  ?network_configuration:network_configuration list ->
  ?scale:scale list ->
  ?service_registries:service_registries list ->
  cluster:string prop ->
  service:string prop ->
  task_definition:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  load_balancer:load_balancer list ->
  string ->
  t

val make :
  ?external_id:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?wait_until_stable:bool prop ->
  ?wait_until_stable_timeout:string prop ->
  ?network_configuration:network_configuration list ->
  ?scale:scale list ->
  ?service_registries:service_registries list ->
  cluster:string prop ->
  service:string prop ->
  task_definition:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  load_balancer:load_balancer list ->
  string ->
  t Tf_core.resource
