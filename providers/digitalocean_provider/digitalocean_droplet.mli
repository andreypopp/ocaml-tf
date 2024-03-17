(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_droplet__timeouts
type digitalocean_droplet

type t = private {
  backups : bool prop;
  created_at : string prop;
  disk : float prop;
  droplet_agent : bool prop;
  graceful_shutdown : bool prop;
  id : string prop;
  image : string prop;
  ipv4_address : string prop;
  ipv4_address_private : string prop;
  ipv6 : bool prop;
  ipv6_address : string prop;
  locked : bool prop;
  memory : float prop;
  monitoring : bool prop;
  name : string prop;
  price_hourly : float prop;
  price_monthly : float prop;
  private_networking : bool prop;
  region : string prop;
  resize_disk : bool prop;
  size : string prop;
  ssh_keys : string list prop;
  status : string prop;
  tags : string list prop;
  urn : string prop;
  user_data : string prop;
  vcpus : float prop;
  volume_ids : string list prop;
  vpc_uuid : string prop;
}

val digitalocean_droplet :
  ?backups:bool prop ->
  ?droplet_agent:bool prop ->
  ?graceful_shutdown:bool prop ->
  ?id:string prop ->
  ?ipv6:bool prop ->
  ?ipv6_address:string prop ->
  ?monitoring:bool prop ->
  ?private_networking:bool prop ->
  ?region:string prop ->
  ?resize_disk:bool prop ->
  ?ssh_keys:string prop list ->
  ?tags:string prop list ->
  ?user_data:string prop ->
  ?volume_ids:string prop list ->
  ?vpc_uuid:string prop ->
  ?timeouts:digitalocean_droplet__timeouts ->
  image:string prop ->
  name:string prop ->
  size:string prop ->
  string ->
  t
