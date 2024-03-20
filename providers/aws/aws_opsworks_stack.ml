(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_cookbooks_source = {
  password : string prop option; [@option]  (** password *)
  revision : string prop option; [@option]  (** revision *)
  ssh_key : string prop option; [@option]  (** ssh_key *)
  type_ : string prop; [@key "type"]  (** type *)
  url : string prop;  (** url *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** custom_cookbooks_source *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  custom_cookbooks_source : custom_cookbooks_source list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opsworks_stack *)

let custom_cookbooks_source ?password ?revision ?ssh_key ?username
    ~type_ ~url () : custom_cookbooks_source =
  { password; revision; ssh_key; type_; url; username }

let timeouts ?create () : timeouts = { create }

let aws_opsworks_stack ?agent_version ?berkshelf_version ?color
    ?configuration_manager_name ?configuration_manager_version
    ?custom_json ?default_availability_zone ?default_os
    ?default_root_device_type ?default_ssh_key_name
    ?default_subnet_id ?hostname_theme ?id ?manage_berkshelf ?tags
    ?tags_all ?use_custom_cookbooks ?use_opsworks_security_groups
    ?vpc_id ?timeouts ~default_instance_profile_arn ~name ~region
    ~service_role_arn ~custom_cookbooks_source () :
    aws_opsworks_stack =
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

let make ?agent_version ?berkshelf_version ?color
    ?configuration_manager_name ?configuration_manager_version
    ?custom_json ?default_availability_zone ?default_os
    ?default_root_device_type ?default_ssh_key_name
    ?default_subnet_id ?hostname_theme ?id ?manage_berkshelf ?tags
    ?tags_all ?use_custom_cookbooks ?use_opsworks_security_groups
    ?vpc_id ?timeouts ~default_instance_profile_arn ~name ~region
    ~service_role_arn ~custom_cookbooks_source __id =
  let __type = "aws_opsworks_stack" in
  let __attrs =
    ({
       agent_version = Prop.computed __type __id "agent_version";
       arn = Prop.computed __type __id "arn";
       berkshelf_version =
         Prop.computed __type __id "berkshelf_version";
       color = Prop.computed __type __id "color";
       configuration_manager_name =
         Prop.computed __type __id "configuration_manager_name";
       configuration_manager_version =
         Prop.computed __type __id "configuration_manager_version";
       custom_json = Prop.computed __type __id "custom_json";
       default_availability_zone =
         Prop.computed __type __id "default_availability_zone";
       default_instance_profile_arn =
         Prop.computed __type __id "default_instance_profile_arn";
       default_os = Prop.computed __type __id "default_os";
       default_root_device_type =
         Prop.computed __type __id "default_root_device_type";
       default_ssh_key_name =
         Prop.computed __type __id "default_ssh_key_name";
       default_subnet_id =
         Prop.computed __type __id "default_subnet_id";
       hostname_theme = Prop.computed __type __id "hostname_theme";
       id = Prop.computed __type __id "id";
       manage_berkshelf =
         Prop.computed __type __id "manage_berkshelf";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       service_role_arn =
         Prop.computed __type __id "service_role_arn";
       stack_endpoint = Prop.computed __type __id "stack_endpoint";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       use_custom_cookbooks =
         Prop.computed __type __id "use_custom_cookbooks";
       use_opsworks_security_groups =
         Prop.computed __type __id "use_opsworks_security_groups";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_stack
        (aws_opsworks_stack ?agent_version ?berkshelf_version ?color
           ?configuration_manager_name ?configuration_manager_version
           ?custom_json ?default_availability_zone ?default_os
           ?default_root_device_type ?default_ssh_key_name
           ?default_subnet_id ?hostname_theme ?id ?manage_berkshelf
           ?tags ?tags_all ?use_custom_cookbooks
           ?use_opsworks_security_groups ?vpc_id ?timeouts
           ~default_instance_profile_arn ~name ~region
           ~service_role_arn ~custom_cookbooks_source ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_version ?berkshelf_version ?color
    ?configuration_manager_name ?configuration_manager_version
    ?custom_json ?default_availability_zone ?default_os
    ?default_root_device_type ?default_ssh_key_name
    ?default_subnet_id ?hostname_theme ?id ?manage_berkshelf ?tags
    ?tags_all ?use_custom_cookbooks ?use_opsworks_security_groups
    ?vpc_id ?timeouts ~default_instance_profile_arn ~name ~region
    ~service_role_arn ~custom_cookbooks_source __id =
  let (r : _ Tf_core.resource) =
    make ?agent_version ?berkshelf_version ?color
      ?configuration_manager_name ?configuration_manager_version
      ?custom_json ?default_availability_zone ?default_os
      ?default_root_device_type ?default_ssh_key_name
      ?default_subnet_id ?hostname_theme ?id ?manage_berkshelf ?tags
      ?tags_all ?use_custom_cookbooks ?use_opsworks_security_groups
      ?vpc_id ?timeouts ~default_instance_profile_arn ~name ~region
      ~service_role_arn ~custom_cookbooks_source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
