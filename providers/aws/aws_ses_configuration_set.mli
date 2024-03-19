(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type delivery_options

val delivery_options :
  ?tls_policy:string prop -> unit -> delivery_options

type tracking_options

val tracking_options :
  ?custom_redirect_domain:string prop -> unit -> tracking_options

type aws_ses_configuration_set

val aws_ses_configuration_set :
  ?id:string prop ->
  ?reputation_metrics_enabled:bool prop ->
  ?sending_enabled:bool prop ->
  name:string prop ->
  delivery_options:delivery_options list ->
  tracking_options:tracking_options list ->
  unit ->
  aws_ses_configuration_set

val yojson_of_aws_ses_configuration_set :
  aws_ses_configuration_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  last_fresh_start : string prop;
  name : string prop;
  reputation_metrics_enabled : bool prop;
  sending_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?reputation_metrics_enabled:bool prop ->
  ?sending_enabled:bool prop ->
  name:string prop ->
  delivery_options:delivery_options list ->
  tracking_options:tracking_options list ->
  string ->
  t
