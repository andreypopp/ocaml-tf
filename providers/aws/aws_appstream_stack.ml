(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?display_name ?embed_host_domains ?feedback_url
    ?id ?redirect_url ?tags ?tags_all ~name ~access_endpoints
    ~application_settings ~storage_connectors
    ~streaming_experience_settings ~user_settings __id =
  let __type = "aws_appstream_stack" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       embed_host_domains =
         Prop.computed __type __id "embed_host_domains";
       feedback_url = Prop.computed __type __id "feedback_url";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       redirect_url = Prop.computed __type __id "redirect_url";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_stack
        (aws_appstream_stack ?description ?display_name
           ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
           ?tags_all ~name ~access_endpoints ~application_settings
           ~storage_connectors ~streaming_experience_settings
           ~user_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name
    ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
    ?tags_all ~name ~access_endpoints ~application_settings
    ~storage_connectors ~streaming_experience_settings ~user_settings
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?embed_host_domains ?feedback_url
      ?id ?redirect_url ?tags ?tags_all ~name ~access_endpoints
      ~application_settings ~storage_connectors
      ~streaming_experience_settings ~user_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
