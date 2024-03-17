(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_stack__custom_cookbooks_source
type aws_opsworks_stack__timeouts
type aws_opsworks_stack

type t = private {
  agent_version : string prop;
  arn : string prop;
  berkshelf_version : string prop;
  color : string prop;
  configuration_manager_name : string prop;
  configuration_manager_version : string prop;
  custom_json : string prop;
  default_availability_zone : string prop;
  default_instance_profile_arn : string prop;
  default_os : string prop;
  default_root_device_type : string prop;
  default_ssh_key_name : string prop;
  default_subnet_id : string prop;
  hostname_theme : string prop;
  id : string prop;
  manage_berkshelf : bool prop;
  name : string prop;
  region : string prop;
  service_role_arn : string prop;
  stack_endpoint : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  use_custom_cookbooks : bool prop;
  use_opsworks_security_groups : bool prop;
  vpc_id : string prop;
}

val aws_opsworks_stack :
  ?agent_version:string prop ->
  ?berkshelf_version:string prop ->
  ?color:string prop ->
  ?configuration_manager_name:string prop ->
  ?configuration_manager_version:string prop ->
  ?custom_json:string prop ->
  ?default_availability_zone:string prop ->
  ?default_os:string prop ->
  ?default_root_device_type:string prop ->
  ?default_ssh_key_name:string prop ->
  ?default_subnet_id:string prop ->
  ?hostname_theme:string prop ->
  ?id:string prop ->
  ?manage_berkshelf:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?use_custom_cookbooks:bool prop ->
  ?use_opsworks_security_groups:bool prop ->
  ?vpc_id:string prop ->
  ?timeouts:aws_opsworks_stack__timeouts ->
  default_instance_profile_arn:string prop ->
  name:string prop ->
  region:string prop ->
  service_role_arn:string prop ->
  custom_cookbooks_source:
    aws_opsworks_stack__custom_cookbooks_source list ->
  string ->
  t
