(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appstream_stack__access_endpoints = {
  endpoint_type : string prop;  (** endpoint_type *)
  vpce_id : string prop option; [@option]  (** vpce_id *)
}
[@@deriving yojson_of]
(** aws_appstream_stack__access_endpoints *)

type aws_appstream_stack__application_settings = {
  enabled : bool prop;  (** enabled *)
  settings_group : string prop option; [@option]
      (** settings_group *)
}
[@@deriving yojson_of]
(** aws_appstream_stack__application_settings *)

type aws_appstream_stack__storage_connectors = {
  connector_type : string prop;  (** connector_type *)
  domains : string prop list option; [@option]  (** domains *)
  resource_identifier : string prop option; [@option]
      (** resource_identifier *)
}
[@@deriving yojson_of]
(** aws_appstream_stack__storage_connectors *)

type aws_appstream_stack__streaming_experience_settings = {
  preferred_protocol : string prop option; [@option]
      (** preferred_protocol *)
}
[@@deriving yojson_of]
(** aws_appstream_stack__streaming_experience_settings *)

type aws_appstream_stack__user_settings = {
  action : string prop;  (** action *)
  permission : string prop;  (** permission *)
}
[@@deriving yojson_of]
(** aws_appstream_stack__user_settings *)

type aws_appstream_stack = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  embed_host_domains : string prop list option; [@option]
      (** embed_host_domains *)
  feedback_url : string prop option; [@option]  (** feedback_url *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  redirect_url : string prop option; [@option]  (** redirect_url *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  access_endpoints : aws_appstream_stack__access_endpoints list;
  application_settings :
    aws_appstream_stack__application_settings list;
  storage_connectors : aws_appstream_stack__storage_connectors list;
  streaming_experience_settings :
    aws_appstream_stack__streaming_experience_settings list;
  user_settings : aws_appstream_stack__user_settings list;
}
[@@deriving yojson_of]
(** aws_appstream_stack *)

let aws_appstream_stack ?description ?display_name
    ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
    ?tags_all ~name ~access_endpoints ~application_settings
    ~storage_connectors ~streaming_experience_settings ~user_settings
    __resource_id =
  let __resource_type = "aws_appstream_stack" in
  let __resource =
    {
      description;
      display_name;
      embed_host_domains;
      feedback_url;
      id;
      name;
      redirect_url;
      tags;
      tags_all;
      access_endpoints;
      application_settings;
      storage_connectors;
      streaming_experience_settings;
      user_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_stack __resource);
  ()
