(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_container_service_deployment_version__container

type aws_lightsail_container_service_deployment_version__public_endpoint__health_check

type aws_lightsail_container_service_deployment_version__public_endpoint

type aws_lightsail_container_service_deployment_version__timeouts
type aws_lightsail_container_service_deployment_version

val aws_lightsail_container_service_deployment_version :
  ?timeouts:
    aws_lightsail_container_service_deployment_version__timeouts ->
  service_name:string ->
  container:
    aws_lightsail_container_service_deployment_version__container
    list ->
  public_endpoint:
    aws_lightsail_container_service_deployment_version__public_endpoint
    list ->
  string ->
  unit
