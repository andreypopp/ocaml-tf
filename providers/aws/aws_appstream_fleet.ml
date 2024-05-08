(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_capacity = { desired_instances : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_capacity) -> ()

let yojson_of_compute_capacity =
  (function
   | { desired_instances = v_desired_instances } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_desired_instances
         in
         ("desired_instances", arg) :: bnds
       in
       `Assoc bnds
    : compute_capacity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_capacity

[@@@deriving.end]

type domain_join_info = {
  directory_name : string prop option; [@option]
  organizational_unit_distinguished_name : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : domain_join_info) -> ()

let yojson_of_domain_join_info =
  (function
   | {
       directory_name = v_directory_name;
       organizational_unit_distinguished_name =
         v_organizational_unit_distinguished_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_organizational_unit_distinguished_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "organizational_unit_distinguished_name", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_directory_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : domain_join_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domain_join_info

[@@@deriving.end]

type vpc_config = {
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type aws_appstream_fleet = {
  description : string prop option; [@option]
  disconnect_timeout_in_seconds : float prop option; [@option]
  display_name : string prop option; [@option]
  enable_default_internet_access : bool prop option; [@option]
  fleet_type : string prop option; [@option]
  iam_role_arn : string prop option; [@option]
  id : string prop option; [@option]
  idle_disconnect_timeout_in_seconds : float prop option; [@option]
  image_arn : string prop option; [@option]
  image_name : string prop option; [@option]
  instance_type : string prop;
  max_user_duration_in_seconds : float prop option; [@option]
  name : string prop;
  stream_view : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  compute_capacity : compute_capacity list;
      [@default []] [@yojson_drop_default ( = )]
  domain_join_info : domain_join_info list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_config : vpc_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appstream_fleet) -> ()

let yojson_of_aws_appstream_fleet =
  (function
   | {
       description = v_description;
       disconnect_timeout_in_seconds =
         v_disconnect_timeout_in_seconds;
       display_name = v_display_name;
       enable_default_internet_access =
         v_enable_default_internet_access;
       fleet_type = v_fleet_type;
       iam_role_arn = v_iam_role_arn;
       id = v_id;
       idle_disconnect_timeout_in_seconds =
         v_idle_disconnect_timeout_in_seconds;
       image_arn = v_image_arn;
       image_name = v_image_name;
       instance_type = v_instance_type;
       max_user_duration_in_seconds = v_max_user_duration_in_seconds;
       name = v_name;
       stream_view = v_stream_view;
       tags = v_tags;
       tags_all = v_tags_all;
       compute_capacity = v_compute_capacity;
       domain_join_info = v_domain_join_info;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_vpc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_config) v_vpc_config
           in
           let bnd = "vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_domain_join_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_domain_join_info)
               v_domain_join_info
           in
           let bnd = "domain_join_info", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_compute_capacity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_compute_capacity)
               v_compute_capacity
           in
           let bnd = "compute_capacity", arg in
           bnd :: bnds
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
         match v_stream_view with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_view", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_user_duration_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_user_duration_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_image_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_disconnect_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_disconnect_timeout_in_seconds", arg in
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
         match v_iam_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fleet_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fleet_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_default_internet_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_default_internet_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disconnect_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disconnect_timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appstream_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appstream_fleet

[@@@deriving.end]

let compute_capacity ~desired_instances () : compute_capacity =
  { desired_instances }

let domain_join_info ?directory_name
    ?organizational_unit_distinguished_name () : domain_join_info =
  { directory_name; organizational_unit_distinguished_name }

let vpc_config ?security_group_ids ?subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_appstream_fleet ?description ?disconnect_timeout_in_seconds
    ?display_name ?enable_default_internet_access ?fleet_type
    ?iam_role_arn ?id ?idle_disconnect_timeout_in_seconds ?image_arn
    ?image_name ?max_user_duration_in_seconds ?stream_view ?tags
    ?tags_all ?(domain_join_info = []) ?(vpc_config = [])
    ~instance_type ~name ~compute_capacity () : aws_appstream_fleet =
  {
    description;
    disconnect_timeout_in_seconds;
    display_name;
    enable_default_internet_access;
    fleet_type;
    iam_role_arn;
    id;
    idle_disconnect_timeout_in_seconds;
    image_arn;
    image_name;
    instance_type;
    max_user_duration_in_seconds;
    name;
    stream_view;
    tags;
    tags_all;
    compute_capacity;
    domain_join_info;
    vpc_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  disconnect_timeout_in_seconds : float prop;
  display_name : string prop;
  enable_default_internet_access : bool prop;
  fleet_type : string prop;
  iam_role_arn : string prop;
  id : string prop;
  idle_disconnect_timeout_in_seconds : float prop;
  image_arn : string prop;
  image_name : string prop;
  instance_type : string prop;
  max_user_duration_in_seconds : float prop;
  name : string prop;
  state : string prop;
  stream_view : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?disconnect_timeout_in_seconds ?display_name
    ?enable_default_internet_access ?fleet_type ?iam_role_arn ?id
    ?idle_disconnect_timeout_in_seconds ?image_arn ?image_name
    ?max_user_duration_in_seconds ?stream_view ?tags ?tags_all
    ?(domain_join_info = []) ?(vpc_config = []) ~instance_type ~name
    ~compute_capacity __id =
  let __type = "aws_appstream_fleet" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       disconnect_timeout_in_seconds =
         Prop.computed __type __id "disconnect_timeout_in_seconds";
       display_name = Prop.computed __type __id "display_name";
       enable_default_internet_access =
         Prop.computed __type __id "enable_default_internet_access";
       fleet_type = Prop.computed __type __id "fleet_type";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       idle_disconnect_timeout_in_seconds =
         Prop.computed __type __id
           "idle_disconnect_timeout_in_seconds";
       image_arn = Prop.computed __type __id "image_arn";
       image_name = Prop.computed __type __id "image_name";
       instance_type = Prop.computed __type __id "instance_type";
       max_user_duration_in_seconds =
         Prop.computed __type __id "max_user_duration_in_seconds";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       stream_view = Prop.computed __type __id "stream_view";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_fleet
        (aws_appstream_fleet ?description
           ?disconnect_timeout_in_seconds ?display_name
           ?enable_default_internet_access ?fleet_type ?iam_role_arn
           ?id ?idle_disconnect_timeout_in_seconds ?image_arn
           ?image_name ?max_user_duration_in_seconds ?stream_view
           ?tags ?tags_all ~domain_join_info ~vpc_config
           ~instance_type ~name ~compute_capacity ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disconnect_timeout_in_seconds
    ?display_name ?enable_default_internet_access ?fleet_type
    ?iam_role_arn ?id ?idle_disconnect_timeout_in_seconds ?image_arn
    ?image_name ?max_user_duration_in_seconds ?stream_view ?tags
    ?tags_all ?(domain_join_info = []) ?(vpc_config = [])
    ~instance_type ~name ~compute_capacity __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disconnect_timeout_in_seconds ?display_name
      ?enable_default_internet_access ?fleet_type ?iam_role_arn ?id
      ?idle_disconnect_timeout_in_seconds ?image_arn ?image_name
      ?max_user_duration_in_seconds ?stream_view ?tags ?tags_all
      ~domain_join_info ~vpc_config ~instance_type ~name
      ~compute_capacity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
