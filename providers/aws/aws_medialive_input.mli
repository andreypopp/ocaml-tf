(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destinations

val destinations : stream_name:string prop -> unit -> destinations

type input_devices

val input_devices : id:string prop -> unit -> input_devices

type media_connect_flows

val media_connect_flows :
  flow_arn:string prop -> unit -> media_connect_flows

type sources

val sources :
  password_param:string prop ->
  url:string prop ->
  username:string prop ->
  unit ->
  sources

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc

val vpc :
  ?security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc

type aws_medialive_input

val aws_medialive_input :
  ?id:string prop ->
  ?input_security_groups:string prop list ->
  ?role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  ?vpc:vpc list ->
  name:string prop ->
  type_:string prop ->
  destinations:destinations list ->
  input_devices:input_devices list ->
  media_connect_flows:media_connect_flows list ->
  sources:sources list ->
  unit ->
  aws_medialive_input

val yojson_of_aws_medialive_input : aws_medialive_input -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  attached_channels : string list prop;
  id : string prop;
  input_class : string prop;
  input_partner_ids : string list prop;
  input_security_groups : string list prop;
  input_source_type : string prop;
  name : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?input_security_groups:string prop list ->
  ?role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  ?vpc:vpc list ->
  name:string prop ->
  type_:string prop ->
  destinations:destinations list ->
  input_devices:input_devices list ->
  media_connect_flows:media_connect_flows list ->
  sources:sources list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?input_security_groups:string prop list ->
  ?role_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  ?vpc:vpc list ->
  name:string prop ->
  type_:string prop ->
  destinations:destinations list ->
  input_devices:input_devices list ->
  media_connect_flows:media_connect_flows list ->
  sources:sources list ->
  string ->
  t Tf_core.resource
