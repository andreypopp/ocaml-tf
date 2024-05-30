(** This resource allows you to create and configure a behavior. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_behavior

val okta_behavior :
  ?id:string prop ->
  ?location_granularity_type:string prop ->
  ?number_of_authentications:float prop ->
  ?radius_from_location:float prop ->
  ?status:string prop ->
  ?velocity:float prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  okta_behavior

val yojson_of_okta_behavior : okta_behavior -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location_granularity_type : string prop;
  name : string prop;
  number_of_authentications : float prop;
  radius_from_location : float prop;
  status : string prop;
  type_ : string prop;
  velocity : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location_granularity_type:string prop ->
  ?number_of_authentications:float prop ->
  ?radius_from_location:float prop ->
  ?status:string prop ->
  ?velocity:float prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location_granularity_type:string prop ->
  ?number_of_authentications:float prop ->
  ?radius_from_location:float prop ->
  ?status:string prop ->
  ?velocity:float prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
