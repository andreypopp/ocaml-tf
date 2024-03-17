(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_organization_exclusion

type t = private {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
}

val google_logging_organization_exclusion :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  filter:string prop ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t
