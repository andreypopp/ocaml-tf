(** DNSimple contact resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_contact

val dnsimple_contact :
  ?address2:string prop ->
  ?fax:string prop ->
  ?job_title:string prop ->
  ?label:string prop ->
  ?organization_name:string prop ->
  address1:string prop ->
  city:string prop ->
  country:string prop ->
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  phone:string prop ->
  postal_code:string prop ->
  state_province:string prop ->
  unit ->
  dnsimple_contact

val yojson_of_dnsimple_contact : dnsimple_contact -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : float prop;
  address1 : string prop;
  address2 : string prop;
  city : string prop;
  country : string prop;
  created_at : string prop;
  email : string prop;
  fax : string prop;
  fax_normalized : string prop;
  first_name : string prop;
  id : float prop;
  job_title : string prop;
  label : string prop;
  last_name : string prop;
  organization_name : string prop;
  phone : string prop;
  phone_normalized : string prop;
  postal_code : string prop;
  state_province : string prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?address2:string prop ->
  ?fax:string prop ->
  ?job_title:string prop ->
  ?label:string prop ->
  ?organization_name:string prop ->
  address1:string prop ->
  city:string prop ->
  country:string prop ->
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  phone:string prop ->
  postal_code:string prop ->
  state_province:string prop ->
  string ->
  t

val make :
  ?address2:string prop ->
  ?fax:string prop ->
  ?job_title:string prop ->
  ?label:string prop ->
  ?organization_name:string prop ->
  address1:string prop ->
  city:string prop ->
  country:string prop ->
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  phone:string prop ->
  postal_code:string prop ->
  state_province:string prop ->
  string ->
  t Tf_core.resource
