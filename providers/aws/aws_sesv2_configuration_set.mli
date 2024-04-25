(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type delivery_options

val delivery_options :
  ?sending_pool_name:string prop ->
  ?tls_policy:string prop ->
  unit ->
  delivery_options

type reputation_options

val reputation_options :
  ?reputation_metrics_enabled:bool prop -> unit -> reputation_options

type sending_options

val sending_options :
  ?sending_enabled:bool prop -> unit -> sending_options

type suppression_options

val suppression_options :
  ?suppressed_reasons:string prop list -> unit -> suppression_options

type tracking_options

val tracking_options :
  custom_redirect_domain:string prop -> unit -> tracking_options

type vdm_options__dashboard_options

val vdm_options__dashboard_options :
  ?engagement_metrics:string prop ->
  unit ->
  vdm_options__dashboard_options

type vdm_options__guardian_options

val vdm_options__guardian_options :
  ?optimized_shared_delivery:string prop ->
  unit ->
  vdm_options__guardian_options

type vdm_options

val vdm_options :
  ?dashboard_options:vdm_options__dashboard_options list ->
  ?guardian_options:vdm_options__guardian_options list ->
  unit ->
  vdm_options

type aws_sesv2_configuration_set

val aws_sesv2_configuration_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?delivery_options:delivery_options list ->
  ?reputation_options:reputation_options list ->
  ?sending_options:sending_options list ->
  ?suppression_options:suppression_options list ->
  ?tracking_options:tracking_options list ->
  ?vdm_options:vdm_options list ->
  configuration_set_name:string prop ->
  unit ->
  aws_sesv2_configuration_set

val yojson_of_aws_sesv2_configuration_set :
  aws_sesv2_configuration_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  configuration_set_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?delivery_options:delivery_options list ->
  ?reputation_options:reputation_options list ->
  ?sending_options:sending_options list ->
  ?suppression_options:suppression_options list ->
  ?tracking_options:tracking_options list ->
  ?vdm_options:vdm_options list ->
  configuration_set_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?delivery_options:delivery_options list ->
  ?reputation_options:reputation_options list ->
  ?sending_options:sending_options list ->
  ?suppression_options:suppression_options list ->
  ?tracking_options:tracking_options list ->
  ?vdm_options:vdm_options list ->
  configuration_set_name:string prop ->
  string ->
  t Tf_core.resource
