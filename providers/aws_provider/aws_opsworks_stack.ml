(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_stack__custom_cookbooks_source = {
  password : string option; [@option]  (** password *)
  revision : string option; [@option]  (** revision *)
  ssh_key : string option; [@option]  (** ssh_key *)
  type_ : string; [@key "type"]  (** type *)
  url : string;  (** url *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_opsworks_stack__custom_cookbooks_source *)

type aws_opsworks_stack__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_opsworks_stack__timeouts *)

type aws_opsworks_stack = {
  berkshelf_version : string option; [@option]
      (** berkshelf_version *)
  color : string option; [@option]  (** color *)
  configuration_manager_name : string option; [@option]
      (** configuration_manager_name *)
  configuration_manager_version : string option; [@option]
      (** configuration_manager_version *)
  custom_json : string option; [@option]  (** custom_json *)
  default_instance_profile_arn : string;
      (** default_instance_profile_arn *)
  default_os : string option; [@option]  (** default_os *)
  default_root_device_type : string option; [@option]
      (** default_root_device_type *)
  default_ssh_key_name : string option; [@option]
      (** default_ssh_key_name *)
  hostname_theme : string option; [@option]  (** hostname_theme *)
  manage_berkshelf : bool option; [@option]  (** manage_berkshelf *)
  name : string;  (** name *)
  region : string;  (** region *)
  service_role_arn : string;  (** service_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  use_custom_cookbooks : bool option; [@option]
      (** use_custom_cookbooks *)
  use_opsworks_security_groups : bool option; [@option]
      (** use_opsworks_security_groups *)
  custom_cookbooks_source :
    aws_opsworks_stack__custom_cookbooks_source list;
  timeouts : aws_opsworks_stack__timeouts option;
}
[@@deriving yojson_of]
(** aws_opsworks_stack *)

let aws_opsworks_stack ?berkshelf_version ?color
    ?configuration_manager_name ?configuration_manager_version
    ?custom_json ?default_os ?default_root_device_type
    ?default_ssh_key_name ?hostname_theme ?manage_berkshelf ?tags
    ?use_custom_cookbooks ?use_opsworks_security_groups ?timeouts
    ~default_instance_profile_arn ~name ~region ~service_role_arn
    ~custom_cookbooks_source __resource_id =
  let __resource_type = "aws_opsworks_stack" in
  let __resource =
    {
      berkshelf_version;
      color;
      configuration_manager_name;
      configuration_manager_version;
      custom_json;
      default_instance_profile_arn;
      default_os;
      default_root_device_type;
      default_ssh_key_name;
      hostname_theme;
      manage_berkshelf;
      name;
      region;
      service_role_arn;
      tags;
      use_custom_cookbooks;
      use_opsworks_security_groups;
      custom_cookbooks_source;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_stack __resource);
  ()
