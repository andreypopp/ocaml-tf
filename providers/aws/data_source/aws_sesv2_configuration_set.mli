(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type delivery_options = {
  sending_pool_name : string prop;  (** sending_pool_name *)
  tls_policy : string prop;  (** tls_policy *)
}

type reputation_options = {
  last_fresh_start : string prop;  (** last_fresh_start *)
  reputation_metrics_enabled : bool prop;
      (** reputation_metrics_enabled *)
}

type sending_options = {
  sending_enabled : bool prop;  (** sending_enabled *)
}

type suppression_options = {
  suppressed_reasons : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** suppressed_reasons *)
}

type tracking_options = {
  custom_redirect_domain : string prop;  (** custom_redirect_domain *)
}

type vdm_options__guardian_options = {
  optimized_shared_delivery : string prop;
      (** optimized_shared_delivery *)
}

type vdm_options__dashboard_options = {
  engagement_metrics : string prop;  (** engagement_metrics *)
}

type vdm_options = {
  dashboard_options : vdm_options__dashboard_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dashboard_options *)
  guardian_options : vdm_options__guardian_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** guardian_options *)
}

type aws_sesv2_configuration_set

val aws_sesv2_configuration_set :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  configuration_set_name:string prop ->
  unit ->
  aws_sesv2_configuration_set

val yojson_of_aws_sesv2_configuration_set :
  aws_sesv2_configuration_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  configuration_set_name : string prop;
  delivery_options : delivery_options list prop;
  id : string prop;
  reputation_options : reputation_options list prop;
  sending_options : sending_options list prop;
  suppression_options : suppression_options list prop;
  tags : string Tf_core.assoc prop;
  tracking_options : tracking_options list prop;
  vdm_options : vdm_options list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  configuration_set_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  configuration_set_name:string prop ->
  string ->
  t Tf_core.resource
