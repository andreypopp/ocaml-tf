(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_endpoint = {
  endpoint_type : string prop;  (** endpoint_type *)
  vpce_id : string prop option; [@option]  (** vpce_id *)
}
[@@deriving yojson_of]
(** access_endpoint *)

type domain_join_info = {
  directory_name : string prop option; [@option]
      (** directory_name *)
  organizational_unit_distinguished_name : string prop option;
      [@option]
      (** organizational_unit_distinguished_name *)
}
[@@deriving yojson_of]
(** domain_join_info *)

type vpc_config = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_config *)

type aws_appstream_image_builder = {
  appstream_agent_version : string prop option; [@option]
      (** appstream_agent_version *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  enable_default_internet_access : bool prop option; [@option]
      (** enable_default_internet_access *)
  iam_role_arn : string prop option; [@option]  (** iam_role_arn *)
  id : string prop option; [@option]  (** id *)
  image_arn : string prop option; [@option]  (** image_arn *)
  image_name : string prop option; [@option]  (** image_name *)
  instance_type : string prop;  (** instance_type *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  access_endpoint : access_endpoint list;
  domain_join_info : domain_join_info list;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_appstream_image_builder *)

let access_endpoint ?vpce_id ~endpoint_type () : access_endpoint =
  { endpoint_type; vpce_id }

let domain_join_info ?directory_name
    ?organizational_unit_distinguished_name () : domain_join_info =
  { directory_name; organizational_unit_distinguished_name }

let vpc_config ?security_group_ids ?subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_appstream_image_builder ?appstream_agent_version ?description
    ?display_name ?enable_default_internet_access ?iam_role_arn ?id
    ?image_arn ?image_name ?tags ?tags_all ~instance_type ~name
    ~access_endpoint ~domain_join_info ~vpc_config () :
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?appstream_agent_version ?description ?display_name
    ?enable_default_internet_access ?iam_role_arn ?id ?image_arn
    ?image_name ?tags ?tags_all ~instance_type ~name ~access_endpoint
    ~domain_join_info ~vpc_config __id =
  let __type = "aws_appstream_image_builder" in
  let __attrs =
    ({
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
           ~instance_type ~name ~access_endpoint ~domain_join_info
           ~vpc_config ());
    attrs = __attrs;
  }

let register ?tf_module ?appstream_agent_version ?description
    ?display_name ?enable_default_internet_access ?iam_role_arn ?id
    ?image_arn ?image_name ?tags ?tags_all ~instance_type ~name
    ~access_endpoint ~domain_join_info ~vpc_config __id =
  let (r : _ Tf_core.resource) =
    make ?appstream_agent_version ?description ?display_name
      ?enable_default_internet_access ?iam_role_arn ?id ?image_arn
      ?image_name ?tags ?tags_all ~instance_type ~name
      ~access_endpoint ~domain_join_info ~vpc_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
