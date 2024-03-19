(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type service_perimeters__spec__egress_policies__egress_from__sources

val service_perimeters__spec__egress_policies__egress_from__sources :
  ?access_level:string prop ->
  unit ->
  service_perimeters__spec__egress_policies__egress_from__sources

type service_perimeters__spec__egress_policies__egress_from

val service_perimeters__spec__egress_policies__egress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  ?source_restriction:string prop ->
  sources:
    service_perimeters__spec__egress_policies__egress_from__sources
    list ->
  unit ->
  service_perimeters__spec__egress_policies__egress_from

type service_perimeters__spec__egress_policies__egress_to__operations__method_selectors

val service_perimeters__spec__egress_policies__egress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  service_perimeters__spec__egress_policies__egress_to__operations__method_selectors

type service_perimeters__spec__egress_policies__egress_to__operations

val service_perimeters__spec__egress_policies__egress_to__operations :
  ?service_name:string prop ->
  method_selectors:
    service_perimeters__spec__egress_policies__egress_to__operations__method_selectors
    list ->
  unit ->
  service_perimeters__spec__egress_policies__egress_to__operations

type service_perimeters__spec__egress_policies__egress_to

val service_perimeters__spec__egress_policies__egress_to :
  ?external_resources:string prop list ->
  ?resources:string prop list ->
  operations:
    service_perimeters__spec__egress_policies__egress_to__operations
    list ->
  unit ->
  service_perimeters__spec__egress_policies__egress_to

type service_perimeters__spec__egress_policies

val service_perimeters__spec__egress_policies :
  egress_from:
    service_perimeters__spec__egress_policies__egress_from list ->
  egress_to:service_perimeters__spec__egress_policies__egress_to list ->
  unit ->
  service_perimeters__spec__egress_policies

type service_perimeters__spec__ingress_policies__ingress_from__sources

val service_perimeters__spec__ingress_policies__ingress_from__sources :
  ?access_level:string prop ->
  ?resource:string prop ->
  unit ->
  service_perimeters__spec__ingress_policies__ingress_from__sources

type service_perimeters__spec__ingress_policies__ingress_from

val service_perimeters__spec__ingress_policies__ingress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  sources:
    service_perimeters__spec__ingress_policies__ingress_from__sources
    list ->
  unit ->
  service_perimeters__spec__ingress_policies__ingress_from

type service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors

val service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors

type service_perimeters__spec__ingress_policies__ingress_to__operations

val service_perimeters__spec__ingress_policies__ingress_to__operations :
  ?service_name:string prop ->
  method_selectors:
    service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors
    list ->
  unit ->
  service_perimeters__spec__ingress_policies__ingress_to__operations

type service_perimeters__spec__ingress_policies__ingress_to

val service_perimeters__spec__ingress_policies__ingress_to :
  ?resources:string prop list ->
  operations:
    service_perimeters__spec__ingress_policies__ingress_to__operations
    list ->
  unit ->
  service_perimeters__spec__ingress_policies__ingress_to

type service_perimeters__spec__ingress_policies

val service_perimeters__spec__ingress_policies :
  ingress_from:
    service_perimeters__spec__ingress_policies__ingress_from list ->
  ingress_to:
    service_perimeters__spec__ingress_policies__ingress_to list ->
  unit ->
  service_perimeters__spec__ingress_policies

type service_perimeters__spec__vpc_accessible_services

val service_perimeters__spec__vpc_accessible_services :
  ?allowed_services:string prop list ->
  ?enable_restriction:bool prop ->
  unit ->
  service_perimeters__spec__vpc_accessible_services

type service_perimeters__spec

val service_perimeters__spec :
  ?access_levels:string prop list ->
  ?resources:string prop list ->
  ?restricted_services:string prop list ->
  egress_policies:service_perimeters__spec__egress_policies list ->
  ingress_policies:service_perimeters__spec__ingress_policies list ->
  vpc_accessible_services:
    service_perimeters__spec__vpc_accessible_services list ->
  unit ->
  service_perimeters__spec

type service_perimeters__status__egress_policies__egress_from__sources

val service_perimeters__status__egress_policies__egress_from__sources :
  ?access_level:string prop ->
  unit ->
  service_perimeters__status__egress_policies__egress_from__sources

type service_perimeters__status__egress_policies__egress_from

val service_perimeters__status__egress_policies__egress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  ?source_restriction:string prop ->
  sources:
    service_perimeters__status__egress_policies__egress_from__sources
    list ->
  unit ->
  service_perimeters__status__egress_policies__egress_from

type service_perimeters__status__egress_policies__egress_to__operations__method_selectors

val service_perimeters__status__egress_policies__egress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  service_perimeters__status__egress_policies__egress_to__operations__method_selectors

type service_perimeters__status__egress_policies__egress_to__operations

val service_perimeters__status__egress_policies__egress_to__operations :
  ?service_name:string prop ->
  method_selectors:
    service_perimeters__status__egress_policies__egress_to__operations__method_selectors
    list ->
  unit ->
  service_perimeters__status__egress_policies__egress_to__operations

type service_perimeters__status__egress_policies__egress_to

val service_perimeters__status__egress_policies__egress_to :
  ?external_resources:string prop list ->
  ?resources:string prop list ->
  operations:
    service_perimeters__status__egress_policies__egress_to__operations
    list ->
  unit ->
  service_perimeters__status__egress_policies__egress_to

type service_perimeters__status__egress_policies

val service_perimeters__status__egress_policies :
  egress_from:
    service_perimeters__status__egress_policies__egress_from list ->
  egress_to:
    service_perimeters__status__egress_policies__egress_to list ->
  unit ->
  service_perimeters__status__egress_policies

type service_perimeters__status__ingress_policies__ingress_from__sources

val service_perimeters__status__ingress_policies__ingress_from__sources :
  ?access_level:string prop ->
  ?resource:string prop ->
  unit ->
  service_perimeters__status__ingress_policies__ingress_from__sources

type service_perimeters__status__ingress_policies__ingress_from

val service_perimeters__status__ingress_policies__ingress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  sources:
    service_perimeters__status__ingress_policies__ingress_from__sources
    list ->
  unit ->
  service_perimeters__status__ingress_policies__ingress_from

type service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors

val service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors

type service_perimeters__status__ingress_policies__ingress_to__operations

val service_perimeters__status__ingress_policies__ingress_to__operations :
  ?service_name:string prop ->
  method_selectors:
    service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors
    list ->
  unit ->
  service_perimeters__status__ingress_policies__ingress_to__operations

type service_perimeters__status__ingress_policies__ingress_to

val service_perimeters__status__ingress_policies__ingress_to :
  ?resources:string prop list ->
  operations:
    service_perimeters__status__ingress_policies__ingress_to__operations
    list ->
  unit ->
  service_perimeters__status__ingress_policies__ingress_to

type service_perimeters__status__ingress_policies

val service_perimeters__status__ingress_policies :
  ingress_from:
    service_perimeters__status__ingress_policies__ingress_from list ->
  ingress_to:
    service_perimeters__status__ingress_policies__ingress_to list ->
  unit ->
  service_perimeters__status__ingress_policies

type service_perimeters__status__vpc_accessible_services

val service_perimeters__status__vpc_accessible_services :
  ?allowed_services:string prop list ->
  ?enable_restriction:bool prop ->
  unit ->
  service_perimeters__status__vpc_accessible_services

type service_perimeters__status

val service_perimeters__status :
  ?access_levels:string prop list ->
  ?resources:string prop list ->
  ?restricted_services:string prop list ->
  egress_policies:service_perimeters__status__egress_policies list ->
  ingress_policies:service_perimeters__status__ingress_policies list ->
  vpc_accessible_services:
    service_perimeters__status__vpc_accessible_services list ->
  unit ->
  service_perimeters__status

type service_perimeters

val service_perimeters :
  ?description:string prop ->
  ?perimeter_type:string prop ->
  ?use_explicit_dry_run_spec:bool prop ->
  name:string prop ->
  title:string prop ->
  spec:service_perimeters__spec list ->
  status:service_perimeters__status list ->
  unit ->
  service_perimeters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_access_context_manager_service_perimeters

val google_access_context_manager_service_perimeters :
  ?id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  service_perimeters:service_perimeters list ->
  unit ->
  google_access_context_manager_service_perimeters

val yojson_of_google_access_context_manager_service_perimeters :
  google_access_context_manager_service_perimeters -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; parent : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  parent:string prop ->
  service_perimeters:service_perimeters list ->
  string ->
  t
