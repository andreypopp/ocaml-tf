(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_volume

val digitalocean_volume :
  ?description:string prop ->
  ?filesystem_type:string prop ->
  ?id:string prop ->
  ?initial_filesystem_label:string prop ->
  ?initial_filesystem_type:string prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  region:string prop ->
  size:float prop ->
  unit ->
  digitalocean_volume

val yojson_of_digitalocean_volume : digitalocean_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  droplet_ids : float list prop;
  filesystem_label : string prop;
  filesystem_type : string prop;
  id : string prop;
  initial_filesystem_label : string prop;
  initial_filesystem_type : string prop;
  name : string prop;
  region : string prop;
  size : float prop;
  snapshot_id : string prop;
  tags : string list prop;
  urn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?filesystem_type:string prop ->
  ?id:string prop ->
  ?initial_filesystem_label:string prop ->
  ?initial_filesystem_type:string prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  region:string prop ->
  size:float prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?filesystem_type:string prop ->
  ?id:string prop ->
  ?initial_filesystem_label:string prop ->
  ?initial_filesystem_type:string prop ->
  ?snapshot_id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  region:string prop ->
  size:float prop ->
  string ->
  t Tf_core.resource
