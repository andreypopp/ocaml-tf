(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_container_service_deployment_version__container

type aws_lightsail_container_service_deployment_version__public_endpoint__health_check

type aws_lightsail_container_service_deployment_version__public_endpoint

type aws_lightsail_container_service_deployment_version__timeouts
type aws_lightsail_container_service_deployment_version

type t = private {
  created_at : string prop;
  id : string prop;
  service_name : string prop;
  state : string prop;
  version : float prop;
}

val aws_lightsail_container_service_deployment_version :
  ?id:string prop ->
  ?timeouts:
    aws_lightsail_container_service_deployment_version__timeouts ->
  service_name:string prop ->
  container:
    aws_lightsail_container_service_deployment_version__container
    list ->
  public_endpoint:
    aws_lightsail_container_service_deployment_version__public_endpoint
    list ->
  string ->
  t
