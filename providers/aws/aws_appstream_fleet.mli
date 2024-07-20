(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type compute_capacity

val compute_capacity :
  ?desired_instances:float prop ->
  ?desired_sessions:float prop ->
  unit ->
  compute_capacity

type domain_join_info

val domain_join_info :
  ?directory_name:string prop ->
  ?organizational_unit_distinguished_name:string prop ->
  unit ->
  domain_join_info

type vpc_config

val vpc_config :
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  unit ->
  vpc_config

type aws_appstream_fleet

val aws_appstream_fleet :
  ?description:string prop ->
  ?disconnect_timeout_in_seconds:float prop ->
  ?display_name:string prop ->
  ?enable_default_internet_access:bool prop ->
  ?fleet_type:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?idle_disconnect_timeout_in_seconds:float prop ->
  ?image_arn:string prop ->
  ?image_name:string prop ->
  ?max_sessions_per_instance:float prop ->
  ?max_user_duration_in_seconds:float prop ->
  ?stream_view:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?domain_join_info:domain_join_info list ->
  ?vpc_config:vpc_config list ->
  instance_type:string prop ->
  name:string prop ->
  compute_capacity:compute_capacity list ->
  unit ->
  aws_appstream_fleet

val yojson_of_aws_appstream_fleet : aws_appstream_fleet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  disconnect_timeout_in_seconds : float prop;
  display_name : string prop;
  enable_default_internet_access : bool prop;
  fleet_type : string prop;
  iam_role_arn : string prop;
  id : string prop;
  idle_disconnect_timeout_in_seconds : float prop;
  image_arn : string prop;
  image_name : string prop;
  instance_type : string prop;
  max_sessions_per_instance : float prop;
  max_user_duration_in_seconds : float prop;
  name : string prop;
  state : string prop;
  stream_view : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disconnect_timeout_in_seconds:float prop ->
  ?display_name:string prop ->
  ?enable_default_internet_access:bool prop ->
  ?fleet_type:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?idle_disconnect_timeout_in_seconds:float prop ->
  ?image_arn:string prop ->
  ?image_name:string prop ->
  ?max_sessions_per_instance:float prop ->
  ?max_user_duration_in_seconds:float prop ->
  ?stream_view:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?domain_join_info:domain_join_info list ->
  ?vpc_config:vpc_config list ->
  instance_type:string prop ->
  name:string prop ->
  compute_capacity:compute_capacity list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?disconnect_timeout_in_seconds:float prop ->
  ?display_name:string prop ->
  ?enable_default_internet_access:bool prop ->
  ?fleet_type:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?idle_disconnect_timeout_in_seconds:float prop ->
  ?image_arn:string prop ->
  ?image_name:string prop ->
  ?max_sessions_per_instance:float prop ->
  ?max_user_duration_in_seconds:float prop ->
  ?stream_view:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?domain_join_info:domain_join_info list ->
  ?vpc_config:vpc_config list ->
  instance_type:string prop ->
  name:string prop ->
  compute_capacity:compute_capacity list ->
  string ->
  t Tf_core.resource
