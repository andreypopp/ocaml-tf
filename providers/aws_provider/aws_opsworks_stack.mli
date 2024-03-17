(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_stack__custom_cookbooks_source
type aws_opsworks_stack__timeouts
type aws_opsworks_stack

val aws_opsworks_stack :
  ?agent_version:string ->
  ?berkshelf_version:string ->
  ?color:string ->
  ?configuration_manager_name:string ->
  ?configuration_manager_version:string ->
  ?custom_json:string ->
  ?default_availability_zone:string ->
  ?default_os:string ->
  ?default_root_device_type:string ->
  ?default_ssh_key_name:string ->
  ?default_subnet_id:string ->
  ?hostname_theme:string ->
  ?id:string ->
  ?manage_berkshelf:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?use_custom_cookbooks:bool ->
  ?use_opsworks_security_groups:bool ->
  ?vpc_id:string ->
  ?timeouts:aws_opsworks_stack__timeouts ->
  default_instance_profile_arn:string ->
  name:string ->
  region:string ->
  service_role_arn:string ->
  custom_cookbooks_source:
    aws_opsworks_stack__custom_cookbooks_source list ->
  string ->
  unit
