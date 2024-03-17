(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_stack__custom_cookbooks_source = {
  password : string prop option; [@option]  (** password *)
  revision : string prop option; [@option]  (** revision *)
  ssh_key : string prop option; [@option]  (** ssh_key *)
  type_ : string prop; [@key "type"]  (** type *)
  url : string prop;  (** url *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_opsworks_stack__custom_cookbooks_source *)

type aws_opsworks_stack__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_opsworks_stack__timeouts *)

type aws_opsworks_stack = {
  agent_version : string prop option; [@option]  (** agent_version *)
  berkshelf_version : string prop option; [@option]
      (** berkshelf_version *)
  color : string prop option; [@option]  (** color *)
  configuration_manager_name : string prop option; [@option]
      (** configuration_manager_name *)
  configuration_manager_version : string prop option; [@option]
      (** configuration_manager_version *)
  custom_json : string prop option; [@option]  (** custom_json *)
  default_availability_zone : string prop option; [@option]
      (** default_availability_zone *)
  default_instance_profile_arn : string prop;
      (** default_instance_profile_arn *)
  default_os : string prop option; [@option]  (** default_os *)
  default_root_device_type : string prop option; [@option]
      (** default_root_device_type *)
  default_ssh_key_name : string prop option; [@option]
      (** default_ssh_key_name *)
  default_subnet_id : string prop option; [@option]
      (** default_subnet_id *)
  hostname_theme : string prop option; [@option]
      (** hostname_theme *)
  id : string prop option; [@option]  (** id *)
  manage_berkshelf : bool prop option; [@option]
      (** manage_berkshelf *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
  service_role_arn : string prop;  (** service_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  use_custom_cookbooks : bool prop option; [@option]
      (** use_custom_cookbooks *)
  use_opsworks_security_groups : bool prop option; [@option]
      (** use_opsworks_security_groups *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
  custom_cookbooks_source :
    aws_opsworks_stack__custom_cookbooks_source list;
  timeouts : aws_opsworks_stack__timeouts option;
}
[@@deriving yojson_of]
(** aws_opsworks_stack *)

type t = {
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

let aws_opsworks_stack ?agent_version ?berkshelf_version ?color
    ?configuration_manager_name ?configuration_manager_version
    ?custom_json ?default_availability_zone ?default_os
    ?default_root_device_type ?default_ssh_key_name
    ?default_subnet_id ?hostname_theme ?id ?manage_berkshelf ?tags
    ?tags_all ?use_custom_cookbooks ?use_opsworks_security_groups
    ?vpc_id ?timeouts ~default_instance_profile_arn ~name ~region
    ~service_role_arn ~custom_cookbooks_source __resource_id =
  let __resource_type = "aws_opsworks_stack" in
  let __resource =
    ({
       agent_version;
       berkshelf_version;
       color;
       configuration_manager_name;
       configuration_manager_version;
       custom_json;
       default_availability_zone;
       default_instance_profile_arn;
       default_os;
       default_root_device_type;
       default_ssh_key_name;
       default_subnet_id;
       hostname_theme;
       id;
       manage_berkshelf;
       name;
       region;
       service_role_arn;
       tags;
       tags_all;
       use_custom_cookbooks;
       use_opsworks_security_groups;
       vpc_id;
       custom_cookbooks_source;
       timeouts;
     }
      : aws_opsworks_stack)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_stack __resource);
  let __resource_attributes =
    ({
       agent_version =
         Prop.computed __resource_type __resource_id "agent_version";
       arn = Prop.computed __resource_type __resource_id "arn";
       berkshelf_version =
         Prop.computed __resource_type __resource_id
           "berkshelf_version";
       color = Prop.computed __resource_type __resource_id "color";
       configuration_manager_name =
         Prop.computed __resource_type __resource_id
           "configuration_manager_name";
       configuration_manager_version =
         Prop.computed __resource_type __resource_id
           "configuration_manager_version";
       custom_json =
         Prop.computed __resource_type __resource_id "custom_json";
       default_availability_zone =
         Prop.computed __resource_type __resource_id
           "default_availability_zone";
       default_instance_profile_arn =
         Prop.computed __resource_type __resource_id
           "default_instance_profile_arn";
       default_os =
         Prop.computed __resource_type __resource_id "default_os";
       default_root_device_type =
         Prop.computed __resource_type __resource_id
           "default_root_device_type";
       default_ssh_key_name =
         Prop.computed __resource_type __resource_id
           "default_ssh_key_name";
       default_subnet_id =
         Prop.computed __resource_type __resource_id
           "default_subnet_id";
       hostname_theme =
         Prop.computed __resource_type __resource_id "hostname_theme";
       id = Prop.computed __resource_type __resource_id "id";
       manage_berkshelf =
         Prop.computed __resource_type __resource_id
           "manage_berkshelf";
       name = Prop.computed __resource_type __resource_id "name";
       region = Prop.computed __resource_type __resource_id "region";
       service_role_arn =
         Prop.computed __resource_type __resource_id
           "service_role_arn";
       stack_endpoint =
         Prop.computed __resource_type __resource_id "stack_endpoint";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       use_custom_cookbooks =
         Prop.computed __resource_type __resource_id
           "use_custom_cookbooks";
       use_opsworks_security_groups =
         Prop.computed __resource_type __resource_id
           "use_opsworks_security_groups";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
