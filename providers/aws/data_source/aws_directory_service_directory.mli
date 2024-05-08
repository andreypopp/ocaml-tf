(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connect_settings = {
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** availability_zones *)
  connect_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** connect_ips *)
  customer_dns_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** customer_dns_ips *)
  customer_username : string prop;  (** customer_username *)
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}

type radius_settings = {
  authentication_protocol : string prop;
      (** authentication_protocol *)
  display_label : string prop;  (** display_label *)
  radius_port : float prop;  (** radius_port *)
  radius_retries : float prop;  (** radius_retries *)
  radius_servers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** radius_servers *)
  radius_timeout : float prop;  (** radius_timeout *)
  use_same_username : bool prop;  (** use_same_username *)
}

type vpc_settings = {
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** availability_zones *)
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}

type aws_directory_service_directory

val aws_directory_service_directory :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  directory_id:string prop ->
  unit ->
  aws_directory_service_directory

val yojson_of_aws_directory_service_directory :
  aws_directory_service_directory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_url : string prop;
  alias : string prop;
  connect_settings : connect_settings list prop;
  description : string prop;
  directory_id : string prop;
  dns_ip_addresses : string list prop;
  edition : string prop;
  enable_sso : bool prop;
  id : string prop;
  name : string prop;
  radius_settings : radius_settings list prop;
  security_group_id : string prop;
  short_name : string prop;
  size : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  vpc_settings : vpc_settings list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  directory_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  directory_id:string prop ->
  string ->
  t Tf_core.resource
