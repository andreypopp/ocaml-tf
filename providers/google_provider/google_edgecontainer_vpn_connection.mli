(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgecontainer_vpn_connection__timeouts
type google_edgecontainer_vpn_connection__vpc_project

type google_edgecontainer_vpn_connection__details__cloud_vpns = {
  gateway : string prop;  (** gateway *)
}

type google_edgecontainer_vpn_connection__details__cloud_router = {
  name : string prop;  (** name *)
}

type google_edgecontainer_vpn_connection__details = {
  cloud_router :
    google_edgecontainer_vpn_connection__details__cloud_router list;
      (** cloud_router *)
  cloud_vpns :
    google_edgecontainer_vpn_connection__details__cloud_vpns list;
      (** cloud_vpns *)
  error : string prop;  (** error *)
  state : string prop;  (** state *)
}

type google_edgecontainer_vpn_connection

val google_edgecontainer_vpn_connection :
  ?enable_high_availability:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?nat_gateway_ip:string prop ->
  ?project:string prop ->
  ?router:string prop ->
  ?vpc:string prop ->
  ?timeouts:google_edgecontainer_vpn_connection__timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  vpc_project:google_edgecontainer_vpn_connection__vpc_project list ->
  string ->
  unit
