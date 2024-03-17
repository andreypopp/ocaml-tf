(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_custom_image__timeouts
type digitalocean_custom_image

type t = private {
  created_at : string prop;
  description : string prop;
  distribution : string prop;
  id : string prop;
  image_id : float prop;
  min_disk_size : float prop;
  name : string prop;
  public : bool prop;
  regions : string list prop;
  size_gigabytes : float prop;
  slug : string prop;
  status : string prop;
  tags : string list prop;
  type_ : string prop;
  url : string prop;
}

val digitalocean_custom_image :
  ?description:string prop ->
  ?distribution:string prop ->
  ?id:string prop ->
  ?tags:string prop list ->
  ?timeouts:digitalocean_custom_image__timeouts ->
  name:string prop ->
  regions:string prop list ->
  url:string prop ->
  string ->
  t
