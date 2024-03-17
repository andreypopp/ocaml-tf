(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_azure_client__timeouts
type google_container_azure_client

type t = private {
  application_id : string prop;
  certificate : string prop;
  create_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  tenant_id : string prop;
  uid : string prop;
}

val google_container_azure_client :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_container_azure_client__timeouts ->
  application_id:string prop ->
  location:string prop ->
  name:string prop ->
  tenant_id:string prop ->
  string ->
  t
