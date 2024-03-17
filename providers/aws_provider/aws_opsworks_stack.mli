(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_stack__custom_cookbooks_source
type aws_opsworks_stack__timeouts
type aws_opsworks_stack

val aws_opsworks_stack :
  ?berkshelf_version:string ->
  ?color:string ->
  ?configuration_manager_name:string ->
  ?configuration_manager_version:string ->
  ?custom_json:string ->
  ?default_os:string ->
  ?default_root_device_type:string ->
  ?default_ssh_key_name:string ->
  ?hostname_theme:string ->
  ?manage_berkshelf:bool ->
  ?tags:(string * string) list ->
  ?use_custom_cookbooks:bool ->
  ?use_opsworks_security_groups:bool ->
  ?timeouts:aws_opsworks_stack__timeouts ->
  default_instance_profile_arn:string ->
  name:string ->
  region:string ->
  service_role_arn:string ->
  custom_cookbooks_source:
    aws_opsworks_stack__custom_cookbooks_source list ->
  string ->
  unit
