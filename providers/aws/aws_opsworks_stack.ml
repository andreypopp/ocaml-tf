(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_cookbooks_source = {
  password : string prop option; [@option]
  revision : string prop option; [@option]
  ssh_key : string prop option; [@option]
  type_ : string prop; [@key "type"]
  url : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_cookbooks_source) -> ()

let yojson_of_custom_cookbooks_source =
  (function
   | {
       password = v_password;
       revision = v_revision;
       ssh_key = v_ssh_key;
       type_ = v_type_;
       url = v_url;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_ssh_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssh_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_cookbooks_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_cookbooks_source

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_opsworks_stack = {
  agent_version : string prop option; [@option]
  berkshelf_version : string prop option; [@option]
  color : string prop option; [@option]
  configuration_manager_name : string prop option; [@option]
  configuration_manager_version : string prop option; [@option]
  custom_json : string prop option; [@option]
  default_availability_zone : string prop option; [@option]
  default_instance_profile_arn : string prop;
  default_os : string prop option; [@option]
  default_root_device_type : string prop option; [@option]
  default_ssh_key_name : string prop option; [@option]
  default_subnet_id : string prop option; [@option]
  hostname_theme : string prop option; [@option]
  id : string prop option; [@option]
  manage_berkshelf : bool prop option; [@option]
  name : string prop;
  region : string prop;
  service_role_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  use_custom_cookbooks : bool prop option; [@option]
  use_opsworks_security_groups : bool prop option; [@option]
  vpc_id : string prop option; [@option]
  custom_cookbooks_source : custom_cookbooks_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opsworks_stack) -> ()

let yojson_of_aws_opsworks_stack =
  (function
   | {
       agent_version = v_agent_version;
       berkshelf_version = v_berkshelf_version;
       color = v_color;
       configuration_manager_name = v_configuration_manager_name;
       configuration_manager_version =
         v_configuration_manager_version;
       custom_json = v_custom_json;
       default_availability_zone = v_default_availability_zone;
       default_instance_profile_arn = v_default_instance_profile_arn;
       default_os = v_default_os;
       default_root_device_type = v_default_root_device_type;
       default_ssh_key_name = v_default_ssh_key_name;
       default_subnet_id = v_default_subnet_id;
       hostname_theme = v_hostname_theme;
       id = v_id;
       manage_berkshelf = v_manage_berkshelf;
       name = v_name;
       region = v_region;
       service_role_arn = v_service_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       use_custom_cookbooks = v_use_custom_cookbooks;
       use_opsworks_security_groups = v_use_opsworks_security_groups;
       vpc_id = v_vpc_id;
       custom_cookbooks_source = v_custom_cookbooks_source;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_cookbooks_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_cookbooks_source)
               v_custom_cookbooks_source
           in
           let bnd = "custom_cookbooks_source", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_opsworks_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_opsworks_security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_custom_cookbooks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_custom_cookbooks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_role_arn
         in
         ("service_role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manage_berkshelf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manage_berkshelf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname_theme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname_theme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ssh_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_ssh_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_root_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_root_device_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_os with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_os", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_instance_profile_arn
         in
         ("default_instance_profile_arn", arg) :: bnds
       in
       let bnds =
         match v_default_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration_manager_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_manager_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration_manager_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_manager_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_berkshelf_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "berkshelf_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_agent_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "agent_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opsworks_stack -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opsworks_stack

[@@@deriving.end]

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
    ?vpc_id ?(custom_cookbooks_source = []) ?timeouts
    ~default_instance_profile_arn ~name ~region ~service_role_arn ()
    : aws_opsworks_stack =
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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
    ?vpc_id ?(custom_cookbooks_source = []) ?timeouts
    ~default_instance_profile_arn ~name ~region ~service_role_arn
    __id =
  let __type = "aws_opsworks_stack" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?use_opsworks_security_groups ?vpc_id
           ~custom_cookbooks_source ?timeouts
           ~default_instance_profile_arn ~name ~region
           ~service_role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?agent_version ?berkshelf_version ?color
    ?configuration_manager_name ?configuration_manager_version
    ?custom_json ?default_availability_zone ?default_os
    ?default_root_device_type ?default_ssh_key_name
    ?default_subnet_id ?hostname_theme ?id ?manage_berkshelf ?tags
    ?tags_all ?use_custom_cookbooks ?use_opsworks_security_groups
    ?vpc_id ?(custom_cookbooks_source = []) ?timeouts
    ~default_instance_profile_arn ~name ~region ~service_role_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?agent_version ?berkshelf_version ?color
      ?configuration_manager_name ?configuration_manager_version
      ?custom_json ?default_availability_zone ?default_os
      ?default_root_device_type ?default_ssh_key_name
      ?default_subnet_id ?hostname_theme ?id ?manage_berkshelf ?tags
      ?tags_all ?use_custom_cookbooks ?use_opsworks_security_groups
      ?vpc_id ~custom_cookbooks_source ?timeouts
      ~default_instance_profile_arn ~name ~region ~service_role_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
