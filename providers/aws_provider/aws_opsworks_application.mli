(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_application__app_source
type aws_opsworks_application__environment
type aws_opsworks_application__ssl_configuration
type aws_opsworks_application

val aws_opsworks_application :
  ?auto_bundle_on_deploy:string ->
  ?aws_flow_ruby_settings:string ->
  ?data_source_arn:string ->
  ?data_source_database_name:string ->
  ?data_source_type:string ->
  ?description:string ->
  ?document_root:string ->
  ?domains:string list ->
  ?enable_ssl:bool ->
  ?rails_env:string ->
  name:string ->
  stack_id:string ->
  type_:string ->
  app_source:aws_opsworks_application__app_source list ->
  environment:aws_opsworks_application__environment list ->
  ssl_configuration:aws_opsworks_application__ssl_configuration list ->
  string ->
  unit
