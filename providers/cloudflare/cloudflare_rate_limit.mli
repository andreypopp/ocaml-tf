(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action__response

val action__response :
  body:string prop ->
  content_type:string prop ->
  unit ->
  action__response

type action

val action :
  ?timeout:float prop ->
  mode:string prop ->
  response:action__response list ->
  unit ->
  action

type correlate

val correlate : ?by:string prop -> unit -> correlate

type match__request

val match__request :
  ?methods:string prop list ->
  ?schemes:string prop list ->
  ?url_pattern:string prop ->
  unit ->
  match__request

type match__response

val match__response :
  ?headers:(string * string prop) list list ->
  ?origin_traffic:bool prop ->
  ?statuses:float prop list ->
  unit ->
  match__response

type match_

val match_ :
  request:match__request list ->
  response:match__response list ->
  unit ->
  match_

type cloudflare_rate_limit

val cloudflare_rate_limit :
  ?bypass_url_patterns:string prop list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  period:float prop ->
  threshold:float prop ->
  zone_id:string prop ->
  action:action list ->
  correlate:correlate list ->
  match_:match_ list ->
  unit ->
  cloudflare_rate_limit

val yojson_of_cloudflare_rate_limit : cloudflare_rate_limit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bypass_url_patterns : string list prop;
  description : string prop;
  disabled : bool prop;
  id : string prop;
  period : float prop;
  threshold : float prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bypass_url_patterns:string prop list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  period:float prop ->
  threshold:float prop ->
  zone_id:string prop ->
  action:action list ->
  correlate:correlate list ->
  match_:match_ list ->
  string ->
  t

val make :
  ?bypass_url_patterns:string prop list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  period:float prop ->
  threshold:float prop ->
  zone_id:string prop ->
  action:action list ->
  correlate:correlate list ->
  match_:match_ list ->
  string ->
  t Tf_core.resource
