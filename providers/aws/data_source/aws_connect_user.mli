(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity_info = {
  email : string prop;  (** email *)
  first_name : string prop;  (** first_name *)
  last_name : string prop;  (** last_name *)
}

type phone_config = {
  after_contact_work_time_limit : float prop;
      (** after_contact_work_time_limit *)
  auto_accept : bool prop;  (** auto_accept *)
  desk_phone_number : string prop;  (** desk_phone_number *)
  phone_type : string prop;  (** phone_type *)
}

type aws_connect_user

val aws_connect_user :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?user_id:string prop ->
  instance_id:string prop ->
  unit ->
  aws_connect_user

val yojson_of_aws_connect_user : aws_connect_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  directory_user_id : string prop;
  hierarchy_group_id : string prop;
  id : string prop;
  identity_info : identity_info list prop;
  instance_id : string prop;
  name : string prop;
  phone_config : phone_config list prop;
  routing_profile_id : string prop;
  security_profile_ids : string list prop;
  tags : (string * string) list prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?user_id:string prop ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?user_id:string prop ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource
