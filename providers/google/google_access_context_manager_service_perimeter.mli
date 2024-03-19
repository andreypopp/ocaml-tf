(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type spec__egress_policies__egress_from__sources

val spec__egress_policies__egress_from__sources :
  ?access_level:string prop ->
  unit ->
  spec__egress_policies__egress_from__sources

type spec__egress_policies__egress_from

val spec__egress_policies__egress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  ?source_restriction:string prop ->
  sources:spec__egress_policies__egress_from__sources list ->
  unit ->
  spec__egress_policies__egress_from

type spec__egress_policies__egress_to__operations__method_selectors

val spec__egress_policies__egress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  spec__egress_policies__egress_to__operations__method_selectors

type spec__egress_policies__egress_to__operations

val spec__egress_policies__egress_to__operations :
  ?service_name:string prop ->
  method_selectors:
    spec__egress_policies__egress_to__operations__method_selectors
    list ->
  unit ->
  spec__egress_policies__egress_to__operations

type spec__egress_policies__egress_to

val spec__egress_policies__egress_to :
  ?external_resources:string prop list ->
  ?resources:string prop list ->
  operations:spec__egress_policies__egress_to__operations list ->
  unit ->
  spec__egress_policies__egress_to

type spec__egress_policies

val spec__egress_policies :
  egress_from:spec__egress_policies__egress_from list ->
  egress_to:spec__egress_policies__egress_to list ->
  unit ->
  spec__egress_policies

type spec__ingress_policies__ingress_from__sources

val spec__ingress_policies__ingress_from__sources :
  ?access_level:string prop ->
  ?resource:string prop ->
  unit ->
  spec__ingress_policies__ingress_from__sources

type spec__ingress_policies__ingress_from

val spec__ingress_policies__ingress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  sources:spec__ingress_policies__ingress_from__sources list ->
  unit ->
  spec__ingress_policies__ingress_from

type spec__ingress_policies__ingress_to__operations__method_selectors

val spec__ingress_policies__ingress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  spec__ingress_policies__ingress_to__operations__method_selectors

type spec__ingress_policies__ingress_to__operations

val spec__ingress_policies__ingress_to__operations :
  ?service_name:string prop ->
  method_selectors:
    spec__ingress_policies__ingress_to__operations__method_selectors
    list ->
  unit ->
  spec__ingress_policies__ingress_to__operations

type spec__ingress_policies__ingress_to

val spec__ingress_policies__ingress_to :
  ?resources:string prop list ->
  operations:spec__ingress_policies__ingress_to__operations list ->
  unit ->
  spec__ingress_policies__ingress_to

type spec__ingress_policies

val spec__ingress_policies :
  ingress_from:spec__ingress_policies__ingress_from list ->
  ingress_to:spec__ingress_policies__ingress_to list ->
  unit ->
  spec__ingress_policies

type spec__vpc_accessible_services

val spec__vpc_accessible_services :
  ?allowed_services:string prop list ->
  ?enable_restriction:bool prop ->
  unit ->
  spec__vpc_accessible_services

type spec

val spec :
  ?access_levels:string prop list ->
  ?resources:string prop list ->
  ?restricted_services:string prop list ->
  egress_policies:spec__egress_policies list ->
  ingress_policies:spec__ingress_policies list ->
  vpc_accessible_services:spec__vpc_accessible_services list ->
  unit ->
  spec

type status__egress_policies__egress_from__sources

val status__egress_policies__egress_from__sources :
  ?access_level:string prop ->
  unit ->
  status__egress_policies__egress_from__sources

type status__egress_policies__egress_from

val status__egress_policies__egress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  ?source_restriction:string prop ->
  sources:status__egress_policies__egress_from__sources list ->
  unit ->
  status__egress_policies__egress_from

type status__egress_policies__egress_to__operations__method_selectors

val status__egress_policies__egress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  status__egress_policies__egress_to__operations__method_selectors

type status__egress_policies__egress_to__operations

val status__egress_policies__egress_to__operations :
  ?service_name:string prop ->
  method_selectors:
    status__egress_policies__egress_to__operations__method_selectors
    list ->
  unit ->
  status__egress_policies__egress_to__operations

type status__egress_policies__egress_to

val status__egress_policies__egress_to :
  ?external_resources:string prop list ->
  ?resources:string prop list ->
  operations:status__egress_policies__egress_to__operations list ->
  unit ->
  status__egress_policies__egress_to

type status__egress_policies

val status__egress_policies :
  egress_from:status__egress_policies__egress_from list ->
  egress_to:status__egress_policies__egress_to list ->
  unit ->
  status__egress_policies

type status__ingress_policies__ingress_from__sources

val status__ingress_policies__ingress_from__sources :
  ?access_level:string prop ->
  ?resource:string prop ->
  unit ->
  status__ingress_policies__ingress_from__sources

type status__ingress_policies__ingress_from

val status__ingress_policies__ingress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  sources:status__ingress_policies__ingress_from__sources list ->
  unit ->
  status__ingress_policies__ingress_from

type status__ingress_policies__ingress_to__operations__method_selectors

val status__ingress_policies__ingress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  status__ingress_policies__ingress_to__operations__method_selectors

type status__ingress_policies__ingress_to__operations

val status__ingress_policies__ingress_to__operations :
  ?service_name:string prop ->
  method_selectors:
    status__ingress_policies__ingress_to__operations__method_selectors
    list ->
  unit ->
  status__ingress_policies__ingress_to__operations

type status__ingress_policies__ingress_to

val status__ingress_policies__ingress_to :
  ?resources:string prop list ->
  operations:status__ingress_policies__ingress_to__operations list ->
  unit ->
  status__ingress_policies__ingress_to

type status__ingress_policies

val status__ingress_policies :
  ingress_from:status__ingress_policies__ingress_from list ->
  ingress_to:status__ingress_policies__ingress_to list ->
  unit ->
  status__ingress_policies

type status__vpc_accessible_services

val status__vpc_accessible_services :
  ?allowed_services:string prop list ->
  ?enable_restriction:bool prop ->
  unit ->
  status__vpc_accessible_services

type status

val status :
  ?access_levels:string prop list ->
  ?resources:string prop list ->
  ?restricted_services:string prop list ->
  egress_policies:status__egress_policies list ->
  ingress_policies:status__ingress_policies list ->
  vpc_accessible_services:status__vpc_accessible_services list ->
  unit ->
  status

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_access_context_manager_service_perimeter

val google_access_context_manager_service_perimeter :
  ?description:string prop ->
  ?id:string prop ->
  ?perimeter_type:string prop ->
  ?use_explicit_dry_run_spec:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  title:string prop ->
  spec:spec list ->
  status:status list ->
  unit ->
  google_access_context_manager_service_perimeter

val yojson_of_google_access_context_manager_service_perimeter :
  google_access_context_manager_service_perimeter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  perimeter_type : string prop;
  title : string prop;
  update_time : string prop;
  use_explicit_dry_run_spec : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?perimeter_type:string prop ->
  ?use_explicit_dry_run_spec:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  title:string prop ->
  spec:spec list ->
  status:status list ->
  string ->
  t
