(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_kmsconfig__timeouts
type google_netapp_kmsconfig

type t = private {
  crypto_key_name : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  instructions : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  terraform_labels : (string * string) list prop;
}

val google_netapp_kmsconfig :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_netapp_kmsconfig__timeouts ->
  crypto_key_name:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t
