(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_cluster__auto_scaling_configuration
type aws_finspace_kx_cluster__cache_storage_configurations
type aws_finspace_kx_cluster__capacity_configuration
type aws_finspace_kx_cluster__code
type aws_finspace_kx_cluster__database__cache_configurations
type aws_finspace_kx_cluster__database
type aws_finspace_kx_cluster__savedown_storage_configuration
type aws_finspace_kx_cluster__scaling_group_configuration
type aws_finspace_kx_cluster__tickerplant_log_configuration
type aws_finspace_kx_cluster__timeouts
type aws_finspace_kx_cluster__vpc_configuration
type aws_finspace_kx_cluster

val aws_finspace_kx_cluster :
  ?availability_zone_id:string ->
  ?command_line_arguments:(string * string) list ->
  ?description:string ->
  ?execution_role:string ->
  ?initialization_script:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_finspace_kx_cluster__timeouts ->
  az_mode:string ->
  environment_id:string ->
  name:string ->
  release_label:string ->
  type_:string ->
  auto_scaling_configuration:
    aws_finspace_kx_cluster__auto_scaling_configuration list ->
  cache_storage_configurations:
    aws_finspace_kx_cluster__cache_storage_configurations list ->
  capacity_configuration:
    aws_finspace_kx_cluster__capacity_configuration list ->
  code:aws_finspace_kx_cluster__code list ->
  database:aws_finspace_kx_cluster__database list ->
  savedown_storage_configuration:
    aws_finspace_kx_cluster__savedown_storage_configuration list ->
  scaling_group_configuration:
    aws_finspace_kx_cluster__scaling_group_configuration list ->
  tickerplant_log_configuration:
    aws_finspace_kx_cluster__tickerplant_log_configuration list ->
  vpc_configuration:aws_finspace_kx_cluster__vpc_configuration list ->
  string ->
  unit
