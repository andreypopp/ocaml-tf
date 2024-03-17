(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_application__app_source
type aws_opsworks_application__environment
type aws_opsworks_application__ssl_configuration
type aws_opsworks_application

val aws_opsworks_application :
  ?auto_bundle_on_deploy:string prop ->
  ?aws_flow_ruby_settings:string prop ->
  ?data_source_arn:string prop ->
  ?data_source_database_name:string prop ->
  ?data_source_type:string prop ->
  ?description:string prop ->
  ?document_root:string prop ->
  ?domains:string prop list ->
  ?enable_ssl:bool prop ->
  ?id:string prop ->
  ?rails_env:string prop ->
  ?short_name:string prop ->
  name:string prop ->
  stack_id:string prop ->
  type_:string prop ->
  app_source:aws_opsworks_application__app_source list ->
  environment:aws_opsworks_application__environment list ->
  ssl_configuration:aws_opsworks_application__ssl_configuration list ->
  string ->
  unit
