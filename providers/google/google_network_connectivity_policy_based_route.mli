(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_policy_based_route__filter

type google_network_connectivity_policy_based_route__interconnect_attachment

type google_network_connectivity_policy_based_route__timeouts
type google_network_connectivity_policy_based_route__virtual_machine

type google_network_connectivity_policy_based_route__warnings = {
  code : string prop;  (** code *)
  data : (string * string prop) list;  (** data *)
  warning_message : string prop;  (** warning_message *)
}

type google_network_connectivity_policy_based_route

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
  warnings :
    google_network_connectivity_policy_based_route__warnings list
    prop;
}

val google_network_connectivity_policy_based_route :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?next_hop_ilb_ip:string prop ->
  ?next_hop_other_routes:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?timeouts:google_network_connectivity_policy_based_route__timeouts ->
  name:string prop ->
  network:string prop ->
  filter:google_network_connectivity_policy_based_route__filter list ->
  interconnect_attachment:
    google_network_connectivity_policy_based_route__interconnect_attachment
    list ->
  virtual_machine:
    google_network_connectivity_policy_based_route__virtual_machine
    list ->
  string ->
  t
