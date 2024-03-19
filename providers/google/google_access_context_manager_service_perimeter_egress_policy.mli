(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type egress_from__sources

val egress_from__sources :
  ?access_level:string prop -> unit -> egress_from__sources

type egress_from

val egress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  ?source_restriction:string prop ->
  sources:egress_from__sources list ->
  unit ->
  egress_from

type egress_to__operations__method_selectors

val egress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  egress_to__operations__method_selectors

type egress_to__operations

val egress_to__operations :
  ?service_name:string prop ->
  method_selectors:egress_to__operations__method_selectors list ->
  unit ->
  egress_to__operations

type egress_to

val egress_to :
  ?external_resources:string prop list ->
  ?resources:string prop list ->
  operations:egress_to__operations list ->
  unit ->
  egress_to

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_access_context_manager_service_perimeter_egress_policy

val google_access_context_manager_service_perimeter_egress_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  perimeter:string prop ->
  egress_from:egress_from list ->
  egress_to:egress_to list ->
  unit ->
  google_access_context_manager_service_perimeter_egress_policy

val yojson_of_google_access_context_manager_service_perimeter_egress_policy :
  google_access_context_manager_service_perimeter_egress_policy ->
  json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; perimeter : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  perimeter:string prop ->
  egress_from:egress_from list ->
  egress_to:egress_to list ->
  string ->
  t
