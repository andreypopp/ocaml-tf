(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity_info = {
  email : string prop option; [@option]
  first_name : string prop option; [@option]
  last_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity_info) -> ()

let yojson_of_identity_info =
  (function
   | {
       email = v_email;
       first_name = v_first_name;
       last_name = v_last_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity_info

[@@@deriving.end]

type phone_config = {
  after_contact_work_time_limit : float prop option; [@option]
  auto_accept : bool prop option; [@option]
  desk_phone_number : string prop option; [@option]
  phone_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : phone_config) -> ()

let yojson_of_phone_config =
  (function
   | {
       after_contact_work_time_limit =
         v_after_contact_work_time_limit;
       auto_accept = v_auto_accept;
       desk_phone_number = v_desk_phone_number;
       phone_type = v_phone_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_type in
         ("phone_type", arg) :: bnds
       in
       let bnds =
         match v_desk_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desk_phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_accept with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_accept", arg in
             bnd :: bnds
       in
       let bnds =
         match v_after_contact_work_time_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "after_contact_work_time_limit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : phone_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_phone_config

[@@@deriving.end]

type aws_connect_user = {
  directory_user_id : string prop option; [@option]
  hierarchy_group_id : string prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop;
  password : string prop option; [@option]
  routing_profile_id : string prop;
  security_profile_ids : string prop list;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  identity_info : identity_info list;
  phone_config : phone_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_user) -> ()

let yojson_of_aws_connect_user =
  (function
   | {
       directory_user_id = v_directory_user_id;
       hierarchy_group_id = v_hierarchy_group_id;
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       password = v_password;
       routing_profile_id = v_routing_profile_id;
       security_profile_ids = v_security_profile_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       identity_info = v_identity_info;
       phone_config = v_phone_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_phone_config v_phone_config
         in
         ("phone_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_identity_info v_identity_info
         in
         ("identity_info", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_profile_ids
         in
         ("security_profile_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_routing_profile_id
         in
         ("routing_profile_id", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
         match v_hierarchy_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hierarchy_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory_user_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory_user_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_user

[@@@deriving.end]

let identity_info ?email ?first_name ?last_name () : identity_info =
  { email; first_name; last_name }

let phone_config ?after_contact_work_time_limit ?auto_accept
    ?desk_phone_number ~phone_type () : phone_config =
  {
    after_contact_work_time_limit;
    auto_accept;
    desk_phone_number;
    phone_type;
  }

let aws_connect_user ?directory_user_id ?hierarchy_group_id ?id
    ?password ?tags ?tags_all ~instance_id ~name ~routing_profile_id
    ~security_profile_ids ~identity_info ~phone_config () :
    aws_connect_user =
  {
    directory_user_id;
    hierarchy_group_id;
    id;
    instance_id;
    name;
    password;
    routing_profile_id;
    security_profile_ids;
    tags;
    tags_all;
    identity_info;
    phone_config;
  }

type t = {
  arn : string prop;
  directory_user_id : string prop;
  hierarchy_group_id : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  password : string prop;
  routing_profile_id : string prop;
  security_profile_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_id : string prop;
}

let make ?directory_user_id ?hierarchy_group_id ?id ?password ?tags
    ?tags_all ~instance_id ~name ~routing_profile_id
    ~security_profile_ids ~identity_info ~phone_config __id =
  let __type = "aws_connect_user" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       directory_user_id =
         Prop.computed __type __id "directory_user_id";
       hierarchy_group_id =
         Prop.computed __type __id "hierarchy_group_id";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       routing_profile_id =
         Prop.computed __type __id "routing_profile_id";
       security_profile_ids =
         Prop.computed __type __id "security_profile_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_user
        (aws_connect_user ?directory_user_id ?hierarchy_group_id ?id
           ?password ?tags ?tags_all ~instance_id ~name
           ~routing_profile_id ~security_profile_ids ~identity_info
           ~phone_config ());
    attrs = __attrs;
  }

let register ?tf_module ?directory_user_id ?hierarchy_group_id ?id
    ?password ?tags ?tags_all ~instance_id ~name ~routing_profile_id
    ~security_profile_ids ~identity_info ~phone_config __id =
  let (r : _ Tf_core.resource) =
    make ?directory_user_id ?hierarchy_group_id ?id ?password ?tags
      ?tags_all ~instance_id ~name ~routing_profile_id
      ~security_profile_ids ~identity_info ~phone_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
