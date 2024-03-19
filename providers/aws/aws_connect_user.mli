(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity_info

val identity_info :
  ?email:string prop ->
  ?first_name:string prop ->
  ?last_name:string prop ->
  unit ->
  identity_info

type phone_config

val phone_config :
  ?after_contact_work_time_limit:float prop ->
  ?auto_accept:bool prop ->
  ?desk_phone_number:string prop ->
  phone_type:string prop ->
  unit ->
  phone_config

type aws_connect_user

val aws_connect_user :
  ?directory_user_id:string prop ->
  ?hierarchy_group_id:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  routing_profile_id:string prop ->
  security_profile_ids:string prop list ->
  identity_info:identity_info list ->
  phone_config:phone_config list ->
  unit ->
  aws_connect_user

val yojson_of_aws_connect_user : aws_connect_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  directory_user_id : string prop;
  hierarchy_group_id : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  password : string prop;
  routing_profile_id : string prop;
  security_profile_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?directory_user_id:string prop ->
  ?hierarchy_group_id:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  routing_profile_id:string prop ->
  security_profile_ids:string prop list ->
  identity_info:identity_info list ->
  phone_config:phone_config list ->
  string ->
  t
