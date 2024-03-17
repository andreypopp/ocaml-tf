(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appstream_fleet__compute_capacity = {
  available : float;  (** available *)
  desired_instances : float;  (** desired_instances *)
  in_use : float;  (** in_use *)
  running : float;  (** running *)
}
[@@deriving yojson_of]
(** aws_appstream_fleet__compute_capacity *)

type aws_appstream_fleet__domain_join_info = {
  directory_name : string option; [@option]  (** directory_name *)
  organizational_unit_distinguished_name : string option; [@option]
      (** organizational_unit_distinguished_name *)
}
[@@deriving yojson_of]
(** aws_appstream_fleet__domain_join_info *)

type aws_appstream_fleet__vpc_config = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_appstream_fleet__vpc_config *)

type aws_appstream_fleet = {
  description : string option; [@option]  (** description *)
  disconnect_timeout_in_seconds : float option; [@option]
      (** disconnect_timeout_in_seconds *)
  display_name : string option; [@option]  (** display_name *)
  enable_default_internet_access : bool option; [@option]
      (** enable_default_internet_access *)
  fleet_type : string option; [@option]  (** fleet_type *)
  iam_role_arn : string option; [@option]  (** iam_role_arn *)
  id : string option; [@option]  (** id *)
  idle_disconnect_timeout_in_seconds : float option; [@option]
      (** idle_disconnect_timeout_in_seconds *)
  image_arn : string option; [@option]  (** image_arn *)
  image_name : string option; [@option]  (** image_name *)
  instance_type : string;  (** instance_type *)
  max_user_duration_in_seconds : float option; [@option]
      (** max_user_duration_in_seconds *)
  name : string;  (** name *)
  stream_view : string option; [@option]  (** stream_view *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  compute_capacity : aws_appstream_fleet__compute_capacity list;
  domain_join_info : aws_appstream_fleet__domain_join_info list;
  vpc_config : aws_appstream_fleet__vpc_config list;
}
[@@deriving yojson_of]
(** aws_appstream_fleet *)

let aws_appstream_fleet ?description ?disconnect_timeout_in_seconds
    ?display_name ?enable_default_internet_access ?fleet_type
    ?iam_role_arn ?id ?idle_disconnect_timeout_in_seconds ?image_arn
    ?image_name ?max_user_duration_in_seconds ?stream_view ?tags
    ?tags_all ~instance_type ~name ~compute_capacity
    ~domain_join_info ~vpc_config __resource_id =
  let __resource_type = "aws_appstream_fleet" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_fleet __resource);
  ()
