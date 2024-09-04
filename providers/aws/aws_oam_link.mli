(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type link_configuration__log_group_configuration

val link_configuration__log_group_configuration :
  filter:string prop ->
  unit ->
  link_configuration__log_group_configuration

type link_configuration__metric_configuration

val link_configuration__metric_configuration :
  filter:string prop ->
  unit ->
  link_configuration__metric_configuration

type link_configuration

val link_configuration :
  ?log_group_configuration:
    link_configuration__log_group_configuration list ->
  ?metric_configuration:link_configuration__metric_configuration list ->
  unit ->
  link_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_oam_link

val aws_oam_link :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?link_configuration:link_configuration list ->
  ?timeouts:timeouts ->
  label_template:string prop ->
  resource_types:string prop list ->
  sink_identifier:string prop ->
  unit ->
  aws_oam_link

val yojson_of_aws_oam_link : aws_oam_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  label : string prop;
  label_template : string prop;
  link_id : string prop;
  resource_types : string list prop;
  sink_arn : string prop;
  sink_identifier : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?link_configuration:link_configuration list ->
  ?timeouts:timeouts ->
  label_template:string prop ->
  resource_types:string prop list ->
  sink_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?link_configuration:link_configuration list ->
  ?timeouts:timeouts ->
  label_template:string prop ->
  resource_types:string prop list ->
  sink_identifier:string prop ->
  string ->
  t Tf_core.resource
