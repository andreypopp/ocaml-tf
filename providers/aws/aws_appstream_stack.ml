(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type access_endpoints = {
  endpoint_type : string prop;  (** endpoint_type *)
  vpce_id : string prop option; [@option]  (** vpce_id *)
}
[@@deriving yojson_of]
(** access_endpoints *)

type application_settings = {
  enabled : bool prop;  (** enabled *)
  settings_group : string prop option; [@option]
      (** settings_group *)
}
[@@deriving yojson_of]
(** application_settings *)

type storage_connectors = {
  connector_type : string prop;  (** connector_type *)
  domains : string prop list option; [@option]  (** domains *)
  resource_identifier : string prop option; [@option]
      (** resource_identifier *)
}
[@@deriving yojson_of]
(** storage_connectors *)

type streaming_experience_settings = {
  preferred_protocol : string prop option; [@option]
      (** preferred_protocol *)
}
[@@deriving yojson_of]
(** streaming_experience_settings *)

type user_settings = {
  action : string prop;  (** action *)
  permission : string prop;  (** permission *)
}
[@@deriving yojson_of]
(** user_settings *)

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
  access_endpoints : access_endpoints list;
  application_settings : application_settings list;
  storage_connectors : storage_connectors list;
  streaming_experience_settings : streaming_experience_settings list;
  user_settings : user_settings list;
}
[@@deriving yojson_of]
(** aws_appstream_stack *)

let access_endpoints ?vpce_id ~endpoint_type () : access_endpoints =
  { endpoint_type; vpce_id }

let application_settings ?settings_group ~enabled () :
    application_settings =
  { enabled; settings_group }

let storage_connectors ?domains ?resource_identifier ~connector_type
    () : storage_connectors =
  { connector_type; domains; resource_identifier }

let streaming_experience_settings ?preferred_protocol () :
    streaming_experience_settings =
  { preferred_protocol }

let user_settings ~action ~permission () : user_settings =
  { action; permission }

let aws_appstream_stack ?description ?display_name
    ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
    ?tags_all ~name ~access_endpoints ~application_settings
    ~storage_connectors ~streaming_experience_settings ~user_settings
    () : aws_appstream_stack =
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

type t = {
  arn : string prop;
  created_time : string prop;
  description : string prop;
  display_name : string prop;
  embed_host_domains : string list prop;
  feedback_url : string prop;
  id : string prop;
  name : string prop;
  redirect_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?display_name
    ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
    ?tags_all ~name ~access_endpoints ~application_settings
    ~storage_connectors ~streaming_experience_settings ~user_settings
    __resource_id =
  let __resource_type = "aws_appstream_stack" in
  let __resource =
    aws_appstream_stack ?description ?display_name
      ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
      ?tags_all ~name ~access_endpoints ~application_settings
      ~storage_connectors ~streaming_experience_settings
      ~user_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_stack __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       embed_host_domains =
         Prop.computed __resource_type __resource_id
           "embed_host_domains";
       feedback_url =
         Prop.computed __resource_type __resource_id "feedback_url";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       redirect_url =
         Prop.computed __resource_type __resource_id "redirect_url";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
