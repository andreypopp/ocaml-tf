(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appstream_image_builder__access_endpoint = {
  endpoint_type : string prop;  (** endpoint_type *)
  vpce_id : string prop option; [@option]  (** vpce_id *)
}
[@@deriving yojson_of]
(** aws_appstream_image_builder__access_endpoint *)

type aws_appstream_image_builder__domain_join_info = {
  directory_name : string prop option; [@option]
      (** directory_name *)
  organizational_unit_distinguished_name : string prop option;
      [@option]
      (** organizational_unit_distinguished_name *)
}
[@@deriving yojson_of]
(** aws_appstream_image_builder__domain_join_info *)

type aws_appstream_image_builder__vpc_config = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_appstream_image_builder__vpc_config *)

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
  access_endpoint :
    aws_appstream_image_builder__access_endpoint list;
  domain_join_info :
    aws_appstream_image_builder__domain_join_info list;
  vpc_config : aws_appstream_image_builder__vpc_config list;
}
[@@deriving yojson_of]
(** aws_appstream_image_builder *)

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

let aws_appstream_image_builder ?appstream_agent_version ?description
    ?display_name ?enable_default_internet_access ?iam_role_arn ?id
    ?image_arn ?image_name ?tags ?tags_all ~instance_type ~name
    ~access_endpoint ~domain_join_info ~vpc_config __resource_id =
  let __resource_type = "aws_appstream_image_builder" in
  let __resource =
    ({
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
      : aws_appstream_image_builder)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_image_builder __resource);
  let __resource_attributes =
    ({
       appstream_agent_version =
         Prop.computed __resource_type __resource_id
           "appstream_agent_version";
       arn = Prop.computed __resource_type __resource_id "arn";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enable_default_internet_access =
         Prop.computed __resource_type __resource_id
           "enable_default_internet_access";
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       image_arn =
         Prop.computed __resource_type __resource_id "image_arn";
       image_name =
         Prop.computed __resource_type __resource_id "image_name";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       name = Prop.computed __resource_type __resource_id "name";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
