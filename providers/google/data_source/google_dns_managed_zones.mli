(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed_zones = {
  description : string prop;  (** description *)
  dns_name : string prop;  (** dns_name *)
  id : string prop;  (** id *)
  managed_zone_id : float prop;  (** managed_zone_id *)
  name : string prop;  (** name *)
  name_servers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** name_servers *)
  project : string prop;  (** project *)
  visibility : string prop;  (** visibility *)
}

type google_dns_managed_zones

val google_dns_managed_zones :
  ?project:string prop -> unit -> google_dns_managed_zones

val yojson_of_google_dns_managed_zones :
  google_dns_managed_zones -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  managed_zones : managed_zones list prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module -> ?project:string prop -> string -> t

val make : ?project:string prop -> string -> t Tf_core.resource
