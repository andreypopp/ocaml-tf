(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_brand__timeouts
type google_iap_brand

type t = private {
  application_title : string prop;
  id : string prop;
  name : string prop;
  org_internal_only : bool prop;
  project : string prop;
  support_email : string prop;
}

val google_iap_brand :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_iap_brand__timeouts ->
  application_title:string prop ->
  support_email:string prop ->
  string ->
  t
