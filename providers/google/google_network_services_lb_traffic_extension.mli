(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type extension_chains__extensions

val extension_chains__extensions :
  ?authority:string prop ->
  ?fail_open:bool prop ->
  ?forward_headers:string prop list ->
  ?supported_events:string prop list ->
  ?timeout:string prop ->
  name:string prop ->
  service:string prop ->
  unit ->
  extension_chains__extensions

type extension_chains__match_condition

val extension_chains__match_condition :
  cel_expression:string prop ->
  unit ->
  extension_chains__match_condition

type extension_chains

val extension_chains :
  name:string prop ->
  extensions:extension_chains__extensions list ->
  match_condition:extension_chains__match_condition list ->
  unit ->
  extension_chains

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_services_lb_traffic_extension

val google_network_services_lb_traffic_extension :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?load_balancing_scheme:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  forwarding_rules:string prop list ->
  location:string prop ->
  name:string prop ->
  extension_chains:extension_chains list ->
  unit ->
  google_network_services_lb_traffic_extension

val yojson_of_google_network_services_lb_traffic_extension :
  google_network_services_lb_traffic_extension -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : (string * string) list prop;
  forwarding_rules : string list prop;
  id : string prop;
  labels : (string * string) list prop;
  load_balancing_scheme : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?load_balancing_scheme:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  forwarding_rules:string prop list ->
  location:string prop ->
  name:string prop ->
  extension_chains:extension_chains list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?load_balancing_scheme:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  forwarding_rules:string prop list ->
  location:string prop ->
  name:string prop ->
  extension_chains:extension_chains list ->
  string ->
  t Tf_core.resource
