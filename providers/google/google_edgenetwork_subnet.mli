(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgenetwork_subnet__timeouts
type google_edgenetwork_subnet

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  ipv4_cidr : string list prop;
  ipv6_cidr : string list prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  state : string prop;
  subnet_id : string prop;
  update_time : string prop;
  vlan_id : float prop;
  zone : string prop;
}

val google_edgenetwork_subnet :
  ?description:string prop ->
  ?id:string prop ->
  ?ipv4_cidr:string prop list ->
  ?ipv6_cidr:string prop list ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?vlan_id:float prop ->
  ?timeouts:google_edgenetwork_subnet__timeouts ->
  location:string prop ->
  network:string prop ->
  subnet_id:string prop ->
  zone:string prop ->
  string ->
  t
