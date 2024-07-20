(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type applications__icon_s3_location = {
  s3_bucket : string prop;  (** s3_bucket *)
  s3_key : string prop;  (** s3_key *)
}

type applications = {
  app_block_arn : string prop;  (** app_block_arn *)
  arn : string prop;  (** arn *)
  created_time : string prop;  (** created_time *)
  description : string prop;  (** description *)
  display_name : string prop;  (** display_name *)
  enabled : bool prop;  (** enabled *)
  icon_s3_location : applications__icon_s3_location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** icon_s3_location *)
  icon_url : string prop;  (** icon_url *)
  instance_families : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instance_families *)
  launch_parameters : string prop;  (** launch_parameters *)
  launch_path : string prop;  (** launch_path *)
  metadata : (string * string prop) list;  (** metadata *)
  name : string prop;  (** name *)
  platforms : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** platforms *)
  working_directory : string prop;  (** working_directory *)
}

type image_permissions = {
  allow_fleet : bool prop;  (** allow_fleet *)
  allow_image_builder : bool prop;  (** allow_image_builder *)
}

type state_change_reason = {
  code : string prop;  (** code *)
  message : string prop;  (** message *)
}

type aws_appstream_image

val aws_appstream_image :
  ?arn:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?type_:string prop ->
  unit ->
  aws_appstream_image

val yojson_of_aws_appstream_image : aws_appstream_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  applications : applications list prop;
  appstream_agent_version : string prop;
  arn : string prop;
  base_image_arn : string prop;
  created_time : string prop;
  description : string prop;
  display_name : string prop;
  image_builder_name : string prop;
  image_builder_supported : bool prop;
  image_permissions : image_permissions list prop;
  most_recent : bool prop;
  name : string prop;
  name_regex : string prop;
  platform : string prop;
  public_base_image_released_date : string prop;
  state : string prop;
  state_change_reason : state_change_reason list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?type_:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?name_regex:string prop ->
  ?type_:string prop ->
  string ->
  t Tf_core.resource
