(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type firewalls__rule = {
  description : string prop;  (** description *)
  destination_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** destination_ips *)
  direction : string prop;  (** direction *)
  port : string prop;  (** port *)
  protocol : string prop;  (** protocol *)
  source_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** source_ips *)
}

type firewalls__apply_to = {
  label_selector : string prop;  (** label_selector *)
  server : float prop;  (** server *)
}

type firewalls = {
  apply_to : firewalls__apply_to list;
      [@default []] [@yojson_drop_default ( = )]
      (** apply_to *)
  id : float prop;  (** id *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  rule : firewalls__rule list;
      [@default []] [@yojson_drop_default ( = )]
      (** rule *)
}

type hcloud_firewalls

val hcloud_firewalls :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_firewalls

val yojson_of_hcloud_firewalls : hcloud_firewalls -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  firewalls : firewalls list prop;
  id : string prop;
  most_recent : bool prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
