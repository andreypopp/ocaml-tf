(** Provides Lists (IPs, Redirects, Hostname, ASNs) to be used in Edge
Rules Engine across all zones within the same account.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type item__value__hostname

val item__value__hostname :
  url_hostname:string prop -> unit -> item__value__hostname

type item__value__redirect

val item__value__redirect :
  ?include_subdomains:string prop ->
  ?preserve_path_suffix:string prop ->
  ?preserve_query_string:string prop ->
  ?status_code:float prop ->
  ?subpath_matching:string prop ->
  source_url:string prop ->
  target_url:string prop ->
  unit ->
  item__value__redirect

type item__value

val item__value :
  ?asn:float prop ->
  ?ip:string prop ->
  ?hostname:item__value__hostname list ->
  ?redirect:item__value__redirect list ->
  unit ->
  item__value

type item

val item :
  ?comment:string prop -> value:item__value list -> unit -> item

type cloudflare_list

val cloudflare_list :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  kind:string prop ->
  name:string prop ->
  item:item list ->
  unit ->
  cloudflare_list

val yojson_of_cloudflare_list : cloudflare_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  kind:string prop ->
  name:string prop ->
  item:item list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  kind:string prop ->
  name:string prop ->
  item:item list ->
  string ->
  t Tf_core.resource
