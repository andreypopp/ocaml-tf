(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_integration_connectors_endpoint_attachment__timeouts
type google_integration_connectors_endpoint_attachment

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  endpoint_ip : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_attachment : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_integration_connectors_endpoint_attachment :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:
    google_integration_connectors_endpoint_attachment__timeouts ->
  location:string prop ->
  name:string prop ->
  service_attachment:string prop ->
  string ->
  t
