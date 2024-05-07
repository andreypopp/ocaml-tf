(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connect_settings

val connect_settings :
  customer_dns_ips:string prop list ->
  customer_username:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  connect_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_settings

val vpc_settings :
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  vpc_settings

type aws_directory_service_directory

val aws_directory_service_directory :
  ?alias:string prop ->
  ?description:string prop ->
  ?desired_number_of_domain_controllers:float prop ->
  ?edition:string prop ->
  ?enable_sso:bool prop ->
  ?id:string prop ->
  ?short_name:string prop ->
  ?size:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?connect_settings:connect_settings list ->
  ?timeouts:timeouts ->
  ?vpc_settings:vpc_settings list ->
  name:string prop ->
  password:string prop ->
  unit ->
  aws_directory_service_directory

val yojson_of_aws_directory_service_directory :
  aws_directory_service_directory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_url : string prop;
  alias : string prop;
  description : string prop;
  desired_number_of_domain_controllers : float prop;
  dns_ip_addresses : string list prop;
  edition : string prop;
  enable_sso : bool prop;
  id : string prop;
  name : string prop;
  password : string prop;
  security_group_id : string prop;
  short_name : string prop;
  size : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias:string prop ->
  ?description:string prop ->
  ?desired_number_of_domain_controllers:float prop ->
  ?edition:string prop ->
  ?enable_sso:bool prop ->
  ?id:string prop ->
  ?short_name:string prop ->
  ?size:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?connect_settings:connect_settings list ->
  ?timeouts:timeouts ->
  ?vpc_settings:vpc_settings list ->
  name:string prop ->
  password:string prop ->
  string ->
  t

val make :
  ?alias:string prop ->
  ?description:string prop ->
  ?desired_number_of_domain_controllers:float prop ->
  ?edition:string prop ->
  ?enable_sso:bool prop ->
  ?id:string prop ->
  ?short_name:string prop ->
  ?size:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?connect_settings:connect_settings list ->
  ?timeouts:timeouts ->
  ?vpc_settings:vpc_settings list ->
  name:string prop ->
  password:string prop ->
  string ->
  t Tf_core.resource
