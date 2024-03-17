(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_volume_snapshot__timeouts
type google_netapp_volume_snapshot

type t = private {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  used_bytes : float prop;
  volume_name : string prop;
}

val google_netapp_volume_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_netapp_volume_snapshot__timeouts ->
  location:string prop ->
  name:string prop ->
  volume_name:string prop ->
  string ->
  t
