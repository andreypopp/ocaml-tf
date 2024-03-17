(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appstream_image_builder__access_endpoint = {
  endpoint_type : string;  (** endpoint_type *)
  vpce_id : string option; [@option]  (** vpce_id *)
}
[@@deriving yojson_of]
(** aws_appstream_image_builder__access_endpoint *)

type aws_appstream_image_builder__domain_join_info = {
  directory_name : string option; [@option]  (** directory_name *)
  organizational_unit_distinguished_name : string option; [@option]
      (** organizational_unit_distinguished_name *)
}
[@@deriving yojson_of]
(** aws_appstream_image_builder__domain_join_info *)

type aws_appstream_image_builder__vpc_config = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_appstream_image_builder__vpc_config *)

type aws_appstream_image_builder = {
  instance_type : string;  (** instance_type *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  access_endpoint :
    aws_appstream_image_builder__access_endpoint list;
  domain_join_info :
    aws_appstream_image_builder__domain_join_info list;
  vpc_config : aws_appstream_image_builder__vpc_config list;
}
[@@deriving yojson_of]
(** aws_appstream_image_builder *)

let aws_appstream_image_builder ?tags ~instance_type ~name
    ~access_endpoint ~domain_join_info ~vpc_config __resource_id =
  let __resource_type = "aws_appstream_image_builder" in
  let __resource =
    {
      instance_type;
      name;
      tags;
      access_endpoint;
      domain_join_info;
      vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_image_builder __resource);
  ()
