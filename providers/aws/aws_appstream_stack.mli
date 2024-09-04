(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_endpoints

val access_endpoints :
  ?vpce_id:string prop ->
  endpoint_type:string prop ->
  unit ->
  access_endpoints

type application_settings

val application_settings :
  ?settings_group:string prop ->
  enabled:bool prop ->
  unit ->
  application_settings

type storage_connectors

val storage_connectors :
  ?domains:string prop list ->
  ?resource_identifier:string prop ->
  connector_type:string prop ->
  unit ->
  storage_connectors

type streaming_experience_settings

val streaming_experience_settings :
  ?preferred_protocol:string prop ->
  unit ->
  streaming_experience_settings

type user_settings

val user_settings :
  action:string prop ->
  permission:string prop ->
  unit ->
  user_settings

type aws_appstream_stack

val aws_appstream_stack :
  ?description:string prop ->
  ?display_name:string prop ->
  ?embed_host_domains:string prop list ->
  ?feedback_url:string prop ->
  ?id:string prop ->
  ?redirect_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?application_settings:application_settings list ->
  ?streaming_experience_settings:streaming_experience_settings list ->
  name:string prop ->
  access_endpoints:access_endpoints list ->
  storage_connectors:storage_connectors list ->
  user_settings:user_settings list ->
  unit ->
  aws_appstream_stack

val yojson_of_aws_appstream_stack : aws_appstream_stack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  display_name : string prop;
  embed_host_domains : string list prop;
  feedback_url : string prop;
  id : string prop;
  name : string prop;
  redirect_url : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?embed_host_domains:string prop list ->
  ?feedback_url:string prop ->
  ?id:string prop ->
  ?redirect_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?application_settings:application_settings list ->
  ?streaming_experience_settings:streaming_experience_settings list ->
  name:string prop ->
  access_endpoints:access_endpoints list ->
  storage_connectors:storage_connectors list ->
  user_settings:user_settings list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?embed_host_domains:string prop list ->
  ?feedback_url:string prop ->
  ?id:string prop ->
  ?redirect_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?application_settings:application_settings list ->
  ?streaming_experience_settings:streaming_experience_settings list ->
  name:string prop ->
  access_endpoints:access_endpoints list ->
  storage_connectors:storage_connectors list ->
  user_settings:user_settings list ->
  string ->
  t Tf_core.resource
