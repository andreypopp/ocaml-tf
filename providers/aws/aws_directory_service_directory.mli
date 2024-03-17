(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_directory__connect_settings
type aws_directory_service_directory__timeouts
type aws_directory_service_directory__vpc_settings
type aws_directory_service_directory

type t = private {
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
  ?timeouts:aws_directory_service_directory__timeouts ->
  name:string prop ->
  password:string prop ->
  connect_settings:
    aws_directory_service_directory__connect_settings list ->
  vpc_settings:aws_directory_service_directory__vpc_settings list ->
  string ->
  t
