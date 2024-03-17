(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_volume

type t = private {
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
  string ->
  t
