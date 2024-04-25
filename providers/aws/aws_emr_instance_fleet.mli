(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instance_type_configs__configurations

val instance_type_configs__configurations :
  ?classification:string prop ->
  ?properties:(string * string prop) list ->
  unit ->
  instance_type_configs__configurations

type instance_type_configs__ebs_config

val instance_type_configs__ebs_config :
  ?iops:float prop ->
  ?volumes_per_instance:float prop ->
  size:float prop ->
  type_:string prop ->
  unit ->
  instance_type_configs__ebs_config

type instance_type_configs

val instance_type_configs :
  ?bid_price:string prop ->
  ?bid_price_as_percentage_of_on_demand_price:float prop ->
  ?weighted_capacity:float prop ->
  instance_type:string prop ->
  configurations:instance_type_configs__configurations list ->
  ebs_config:instance_type_configs__ebs_config list ->
  unit ->
  instance_type_configs

type launch_specifications__on_demand_specification

val launch_specifications__on_demand_specification :
  allocation_strategy:string prop ->
  unit ->
  launch_specifications__on_demand_specification

type launch_specifications__spot_specification

val launch_specifications__spot_specification :
  ?block_duration_minutes:float prop ->
  allocation_strategy:string prop ->
  timeout_action:string prop ->
  timeout_duration_minutes:float prop ->
  unit ->
  launch_specifications__spot_specification

type launch_specifications

val launch_specifications :
  ?on_demand_specification:
    launch_specifications__on_demand_specification list ->
  ?spot_specification:launch_specifications__spot_specification list ->
  unit ->
  launch_specifications

type aws_emr_instance_fleet

val aws_emr_instance_fleet :
  ?id:string prop ->
  ?name:string prop ->
  ?target_on_demand_capacity:float prop ->
  ?target_spot_capacity:float prop ->
  ?launch_specifications:launch_specifications list ->
  cluster_id:string prop ->
  instance_type_configs:instance_type_configs list ->
  unit ->
  aws_emr_instance_fleet

val yojson_of_aws_emr_instance_fleet : aws_emr_instance_fleet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  provisioned_on_demand_capacity : float prop;
  provisioned_spot_capacity : float prop;
  target_on_demand_capacity : float prop;
  target_spot_capacity : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?target_on_demand_capacity:float prop ->
  ?target_spot_capacity:float prop ->
  ?launch_specifications:launch_specifications list ->
  cluster_id:string prop ->
  instance_type_configs:instance_type_configs list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?target_on_demand_capacity:float prop ->
  ?target_spot_capacity:float prop ->
  ?launch_specifications:launch_specifications list ->
  cluster_id:string prop ->
  instance_type_configs:instance_type_configs list ->
  string ->
  t Tf_core.resource
