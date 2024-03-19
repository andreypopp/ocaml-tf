(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type warnings = {
  code : string prop;  (** code *)
  data : (string * string prop) list;  (** data *)
  warning_message : string prop;  (** warning_message *)
}

type filter

val filter :
  ?dest_range:string prop ->
  ?ip_protocol:string prop ->
  ?src_range:string prop ->
  protocol_version:string prop ->
  unit ->
  filter

type interconnect_attachment

val interconnect_attachment :
  region:string prop -> unit -> interconnect_attachment

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_machine

val virtual_machine :
  tags:string prop list -> unit -> virtual_machine

type google_network_connectivity_policy_based_route

val google_network_connectivity_policy_based_route :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?next_hop_ilb_ip:string prop ->
  ?next_hop_other_routes:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  filter:filter list ->
  interconnect_attachment:interconnect_attachment list ->
  virtual_machine:virtual_machine list ->
  unit ->
  google_network_connectivity_policy_based_route

val yojson_of_google_network_connectivity_policy_based_route :
  google_network_connectivity_policy_based_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  kind : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  next_hop_ilb_ip : string prop;
  next_hop_other_routes : string prop;
  priority : float prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  warnings : warnings list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?next_hop_ilb_ip:string prop ->
  ?next_hop_other_routes:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  filter:filter list ->
  interconnect_attachment:interconnect_attachment list ->
  virtual_machine:virtual_machine list ->
  string ->
  t
