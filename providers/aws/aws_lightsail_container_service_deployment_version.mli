(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type container

val container :
  ?command:string prop list ->
  ?environment:(string * string prop) list ->
  ?ports:(string * string prop) list ->
  container_name:string prop ->
  image:string prop ->
  unit ->
  container

type public_endpoint__health_check

val public_endpoint__health_check :
  ?healthy_threshold:float prop ->
  ?interval_seconds:float prop ->
  ?path:string prop ->
  ?success_codes:string prop ->
  ?timeout_seconds:float prop ->
  ?unhealthy_threshold:float prop ->
  unit ->
  public_endpoint__health_check

type public_endpoint

val public_endpoint :
  container_name:string prop ->
  container_port:float prop ->
  health_check:public_endpoint__health_check list ->
  unit ->
  public_endpoint

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_lightsail_container_service_deployment_version

val aws_lightsail_container_service_deployment_version :
  ?id:string prop ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  container:container list ->
  public_endpoint:public_endpoint list ->
  unit ->
  aws_lightsail_container_service_deployment_version

val yojson_of_aws_lightsail_container_service_deployment_version :
  aws_lightsail_container_service_deployment_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_at : string prop;
  id : string prop;
  service_name : string prop;
  state : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  container:container list ->
  public_endpoint:public_endpoint list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  service_name:string prop ->
  container:container list ->
  public_endpoint:public_endpoint list ->
  string ->
  t Tf_core.resource
