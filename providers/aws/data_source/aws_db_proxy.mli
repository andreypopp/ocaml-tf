(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auth = {
  auth_scheme : string prop;  (** auth_scheme *)
  client_password_auth_type : string prop;
      (** client_password_auth_type *)
  description : string prop;  (** description *)
  iam_auth : string prop;  (** iam_auth *)
  secret_arn : string prop;  (** secret_arn *)
  username : string prop;  (** username *)
}

type aws_db_proxy

val aws_db_proxy :
  ?id:string prop -> name:string prop -> unit -> aws_db_proxy

val yojson_of_aws_db_proxy : aws_db_proxy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auth : auth list prop;
  debug_logging : bool prop;
  endpoint : string prop;
  engine_family : string prop;
  id : string prop;
  idle_client_timeout : float prop;
  name : string prop;
  require_tls : bool prop;
  role_arn : string prop;
  vpc_id : string prop;
  vpc_security_group_ids : string list prop;
  vpc_subnet_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
