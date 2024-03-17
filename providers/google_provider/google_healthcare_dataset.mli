(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dataset__timeouts
type google_healthcare_dataset

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  time_zone : string prop;
}

val google_healthcare_dataset :
  ?id:string prop ->
  ?project:string prop ->
  ?time_zone:string prop ->
  ?timeouts:google_healthcare_dataset__timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t
