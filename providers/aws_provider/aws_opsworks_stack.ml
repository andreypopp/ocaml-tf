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
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_stack __resource);
  ()
