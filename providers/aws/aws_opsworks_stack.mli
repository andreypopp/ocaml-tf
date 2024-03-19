(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type custom_cookbooks_source

val custom_cookbooks_source :
  ?password:string prop ->
  ?revision:string prop ->
  ?ssh_key:string prop ->
  ?username:string prop ->
  type_:string prop ->
  url:string prop ->
  unit ->
  custom_cookbooks_source

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_opsworks_stack

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
  ?timeouts:timeouts ->
  default_instance_profile_arn:string prop ->
  name:string prop ->
  region:string prop ->
  service_role_arn:string prop ->
  custom_cookbooks_source:custom_cookbooks_source list ->
  unit ->
  aws_opsworks_stack

val yojson_of_aws_opsworks_stack : aws_opsworks_stack -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  default_instance_profile_arn:string prop ->
  name:string prop ->
  region:string prop ->
  service_role_arn:string prop ->
  custom_cookbooks_source:custom_cookbooks_source list ->
  string ->
  t
