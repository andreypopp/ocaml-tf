(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_endpoint = {
  endpoint_type : string prop;
  vpce_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_endpoint) -> ()

let yojson_of_access_endpoint =
  (function
   | { endpoint_type = v_endpoint_type; vpce_id = v_vpce_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpce_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpce_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_type in
         ("endpoint_type", arg) :: bnds
       in
       `Assoc bnds
    : access_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_endpoint

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

type aws_appstream_image_builder = {
  appstream_agent_version : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  enable_default_internet_access : bool prop option; [@option]
  iam_role_arn : string prop option; [@option]
  id : string prop option; [@option]
  image_arn : string prop option; [@option]
  image_name : string prop option; [@option]
  instance_type : string prop;
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  access_endpoint : access_endpoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domain_join_info : domain_join_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_config : vpc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appstream_image_builder) -> ()

let yojson_of_aws_appstream_image_builder =
  (function
   | {
       appstream_agent_version = v_appstream_agent_version;
       description = v_description;
       display_name = v_display_name;
       enable_default_internet_access =
         v_enable_default_internet_access;
       iam_role_arn = v_iam_role_arn;
       id = v_id;
       image_arn = v_image_arn;
       image_name = v_image_name;
       instance_type = v_instance_type;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       access_endpoint = v_access_endpoint;
       domain_join_info = v_domain_join_info;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_config) v_vpc_config
           in
           let bnd = "vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_domain_join_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_domain_join_info)
               v_domain_join_info
           in
           let bnd = "domain_join_info", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_endpoint)
               v_access_endpoint
           in
           let bnd = "access_endpoint", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appstream_agent_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appstream_agent_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appstream_image_builder ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appstream_image_builder

[@@@deriving.end]

let access_endpoint ?vpce_id ~endpoint_type () : access_endpoint =
  { endpoint_type; vpce_id }

let domain_join_info ?directory_name
    ?organizational_unit_distinguished_name () : domain_join_info =
  { directory_name; organizational_unit_distinguished_name }

let vpc_config ?security_group_ids ?subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_appstream_image_builder ?appstream_agent_version ?description
    ?display_name ?enable_default_internet_access ?iam_role_arn ?id
    ?image_arn ?image_name ?tags ?tags_all ?(domain_join_info = [])
    ?(vpc_config = []) ~instance_type ~name ~access_endpoint () :
    aws_appstream_image_builder =
  {
    appstream_agent_version;
    description;
    display_name;
    enable_default_internet_access;
    iam_role_arn;
    id;
    image_arn;
    image_name;
    instance_type;
    name;
    tags;
    tags_all;
    access_endpoint;
    domain_join_info;
    vpc_config;
  }

type t = {
  tf_name : string;
  appstream_agent_version : string prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  display_name : string prop;
  enable_default_internet_access : bool prop;
  iam_role_arn : string prop;
  id : string prop;
  image_arn : string prop;
  image_name : string prop;
  instance_type : string prop;
  name : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?appstream_agent_version ?description ?display_name
    ?enable_default_internet_access ?iam_role_arn ?id ?image_arn
    ?image_name ?tags ?tags_all ?(domain_join_info = [])
    ?(vpc_config = []) ~instance_type ~name ~access_endpoint __id =
  let __type = "aws_appstream_image_builder" in
  let __attrs =
    ({
       tf_name = __id;
       appstream_agent_version =
         Prop.computed __type __id "appstream_agent_version";
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enable_default_internet_access =
         Prop.computed __type __id "enable_default_internet_access";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       image_arn = Prop.computed __type __id "image_arn";
       image_name = Prop.computed __type __id "image_name";
       instance_type = Prop.computed __type __id "instance_type";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_image_builder
        (aws_appstream_image_builder ?appstream_agent_version
           ?description ?display_name ?enable_default_internet_access
           ?iam_role_arn ?id ?image_arn ?image_name ?tags ?tags_all
           ~domain_join_info ~vpc_config ~instance_type ~name
           ~access_endpoint ());
    attrs = __attrs;
  }

let register ?tf_module ?appstream_agent_version ?description
    ?display_name ?enable_default_internet_access ?iam_role_arn ?id
    ?image_arn ?image_name ?tags ?tags_all ?(domain_join_info = [])
    ?(vpc_config = []) ~instance_type ~name ~access_endpoint __id =
  let (r : _ Tf_core.resource) =
    make ?appstream_agent_version ?description ?display_name
      ?enable_default_internet_access ?iam_role_arn ?id ?image_arn
      ?image_name ?tags ?tags_all ~domain_join_info ~vpc_config
      ~instance_type ~name ~access_endpoint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
