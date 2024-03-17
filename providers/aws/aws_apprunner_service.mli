(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_service__encryption_configuration
type aws_apprunner_service__health_check_configuration
type aws_apprunner_service__instance_configuration

type aws_apprunner_service__network_configuration__egress_configuration

type aws_apprunner_service__network_configuration__ingress_configuration

type aws_apprunner_service__network_configuration
type aws_apprunner_service__observability_configuration

type aws_apprunner_service__source_configuration__authentication_configuration

type aws_apprunner_service__source_configuration__code_repository__code_configuration__code_configuration_values

type aws_apprunner_service__source_configuration__code_repository__code_configuration

type aws_apprunner_service__source_configuration__code_repository__source_code_version

type aws_apprunner_service__source_configuration__code_repository

type aws_apprunner_service__source_configuration__image_repository__image_configuration

type aws_apprunner_service__source_configuration__image_repository
type aws_apprunner_service__source_configuration
type aws_apprunner_service

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

val aws_apprunner_service :
  ?auto_scaling_configuration_arn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  service_name:string prop ->
  encryption_configuration:
    aws_apprunner_service__encryption_configuration list ->
  health_check_configuration:
    aws_apprunner_service__health_check_configuration list ->
  instance_configuration:
    aws_apprunner_service__instance_configuration list ->
  network_configuration:
    aws_apprunner_service__network_configuration list ->
  observability_configuration:
    aws_apprunner_service__observability_configuration list ->
  source_configuration:
    aws_apprunner_service__source_configuration list ->
  string ->
  t
