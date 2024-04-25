(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_configuration

val encryption_configuration :
  kms_key:string prop -> unit -> encryption_configuration

type health_check_configuration

val health_check_configuration :
  ?healthy_threshold:float prop ->
  ?interval:float prop ->
  ?path:string prop ->
  ?protocol:string prop ->
  ?timeout:float prop ->
  ?unhealthy_threshold:float prop ->
  unit ->
  health_check_configuration

type instance_configuration

val instance_configuration :
  ?cpu:string prop ->
  ?instance_role_arn:string prop ->
  ?memory:string prop ->
  unit ->
  instance_configuration

type network_configuration__egress_configuration

val network_configuration__egress_configuration :
  ?egress_type:string prop ->
  ?vpc_connector_arn:string prop ->
  unit ->
  network_configuration__egress_configuration

type network_configuration__ingress_configuration

val network_configuration__ingress_configuration :
  ?is_publicly_accessible:bool prop ->
  unit ->
  network_configuration__ingress_configuration

type network_configuration

val network_configuration :
  ?ip_address_type:string prop ->
  ?egress_configuration:
    network_configuration__egress_configuration list ->
  ?ingress_configuration:
    network_configuration__ingress_configuration list ->
  unit ->
  network_configuration

type observability_configuration

val observability_configuration :
  ?observability_configuration_arn:string prop ->
  observability_enabled:bool prop ->
  unit ->
  observability_configuration

type source_configuration__authentication_configuration

val source_configuration__authentication_configuration :
  ?access_role_arn:string prop ->
  ?connection_arn:string prop ->
  unit ->
  source_configuration__authentication_configuration

type source_configuration__code_repository__code_configuration__code_configuration_values

val source_configuration__code_repository__code_configuration__code_configuration_values :
  ?build_command:string prop ->
  ?port:string prop ->
  ?runtime_environment_secrets:(string * string prop) list ->
  ?runtime_environment_variables:(string * string prop) list ->
  ?start_command:string prop ->
  runtime:string prop ->
  unit ->
  source_configuration__code_repository__code_configuration__code_configuration_values

type source_configuration__code_repository__code_configuration

val source_configuration__code_repository__code_configuration :
  ?code_configuration_values:
    source_configuration__code_repository__code_configuration__code_configuration_values
    list ->
  configuration_source:string prop ->
  unit ->
  source_configuration__code_repository__code_configuration

type source_configuration__code_repository__source_code_version

val source_configuration__code_repository__source_code_version :
  type_:string prop ->
  value:string prop ->
  unit ->
  source_configuration__code_repository__source_code_version

type source_configuration__code_repository

val source_configuration__code_repository :
  ?source_directory:string prop ->
  ?code_configuration:
    source_configuration__code_repository__code_configuration list ->
  repository_url:string prop ->
  source_code_version:
    source_configuration__code_repository__source_code_version list ->
  unit ->
  source_configuration__code_repository

type source_configuration__image_repository__image_configuration

val source_configuration__image_repository__image_configuration :
  ?port:string prop ->
  ?runtime_environment_secrets:(string * string prop) list ->
  ?runtime_environment_variables:(string * string prop) list ->
  ?start_command:string prop ->
  unit ->
  source_configuration__image_repository__image_configuration

type source_configuration__image_repository

val source_configuration__image_repository :
  ?image_configuration:
    source_configuration__image_repository__image_configuration list ->
  image_identifier:string prop ->
  image_repository_type:string prop ->
  unit ->
  source_configuration__image_repository

type source_configuration

val source_configuration :
  ?auto_deployments_enabled:bool prop ->
  ?authentication_configuration:
    source_configuration__authentication_configuration list ->
  ?code_repository:source_configuration__code_repository list ->
  ?image_repository:source_configuration__image_repository list ->
  unit ->
  source_configuration

type aws_apprunner_service

val aws_apprunner_service :
  ?auto_scaling_configuration_arn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?encryption_configuration:encryption_configuration list ->
  ?health_check_configuration:health_check_configuration list ->
  ?instance_configuration:instance_configuration list ->
  ?network_configuration:network_configuration list ->
  ?observability_configuration:observability_configuration list ->
  service_name:string prop ->
  source_configuration:source_configuration list ->
  unit ->
  aws_apprunner_service

val yojson_of_aws_apprunner_service : aws_apprunner_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auto_scaling_configuration_arn : string prop;
  id : string prop;
  service_id : string prop;
  service_name : string prop;
  service_url : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_scaling_configuration_arn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?encryption_configuration:encryption_configuration list ->
  ?health_check_configuration:health_check_configuration list ->
  ?instance_configuration:instance_configuration list ->
  ?network_configuration:network_configuration list ->
  ?observability_configuration:observability_configuration list ->
  service_name:string prop ->
  source_configuration:source_configuration list ->
  string ->
  t

val make :
  ?auto_scaling_configuration_arn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?encryption_configuration:encryption_configuration list ->
  ?health_check_configuration:health_check_configuration list ->
  ?instance_configuration:instance_configuration list ->
  ?network_configuration:network_configuration list ->
  ?observability_configuration:observability_configuration list ->
  service_name:string prop ->
  source_configuration:source_configuration list ->
  string ->
  t Tf_core.resource
