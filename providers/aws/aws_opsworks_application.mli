(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type app_source

val app_source :
  ?password:string prop ->
  ?revision:string prop ->
  ?ssh_key:string prop ->
  ?url:string prop ->
  ?username:string prop ->
  type_:string prop ->
  unit ->
  app_source

type environment

val environment :
  ?secure:bool prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  environment

type ssl_configuration

val ssl_configuration :
  ?chain:string prop ->
  certificate:string prop ->
  private_key:string prop ->
  unit ->
  ssl_configuration

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
  ?app_source:app_source list ->
  ?ssl_configuration:ssl_configuration list ->
  name:string prop ->
  stack_id:string prop ->
  type_:string prop ->
  environment:environment list ->
  unit ->
  aws_opsworks_application

val yojson_of_aws_opsworks_application :
  aws_opsworks_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_bundle_on_deploy : string prop;
  aws_flow_ruby_settings : string prop;
  data_source_arn : string prop;
  data_source_database_name : string prop;
  data_source_type : string prop;
  description : string prop;
  document_root : string prop;
  domains : string list prop;
  enable_ssl : bool prop;
  id : string prop;
  name : string prop;
  rails_env : string prop;
  short_name : string prop;
  stack_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?app_source:app_source list ->
  ?ssl_configuration:ssl_configuration list ->
  name:string prop ->
  stack_id:string prop ->
  type_:string prop ->
  environment:environment list ->
  string ->
  t

val make :
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
  ?app_source:app_source list ->
  ?ssl_configuration:ssl_configuration list ->
  name:string prop ->
  stack_id:string prop ->
  type_:string prop ->
  environment:environment list ->
  string ->
  t Tf_core.resource
