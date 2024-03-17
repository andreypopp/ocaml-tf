(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_droplet__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** digitalocean_droplet__timeouts *)

type digitalocean_droplet = {
  backups : bool prop option; [@option]  (** backups *)
  droplet_agent : bool prop option; [@option]  (** droplet_agent *)
  graceful_shutdown : bool prop option; [@option]
      (** graceful_shutdown *)
  id : string prop option; [@option]  (** id *)
  image : string prop;  (** image *)
  ipv6 : bool prop option; [@option]  (** ipv6 *)
  ipv6_address : string prop option; [@option]  (** ipv6_address *)
  monitoring : bool prop option; [@option]  (** monitoring *)
  name : string prop;  (** name *)
  private_networking : bool prop option; [@option]
      (** private_networking *)
  region : string prop option; [@option]  (** region *)
  resize_disk : bool prop option; [@option]  (** resize_disk *)
  size : string prop;  (** size *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  tags : string prop list option; [@option]  (** tags *)
  user_data : string prop option; [@option]  (** user_data *)
  volume_ids : string prop list option; [@option]  (** volume_ids *)
  vpc_uuid : string prop option; [@option]  (** vpc_uuid *)
  timeouts : digitalocean_droplet__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_droplet *)

let digitalocean_droplet ?backups ?droplet_agent ?graceful_shutdown
    ?id ?ipv6 ?ipv6_address ?monitoring ?private_networking ?region
    ?resize_disk ?ssh_keys ?tags ?user_data ?volume_ids ?vpc_uuid
    ?timeouts ~image ~name ~size __resource_id =
  let __resource_type = "digitalocean_droplet" in
  let __resource =
    {
      backups;
      droplet_agent;
      graceful_shutdown;
      id;
      image;
      ipv6;
      ipv6_address;
      monitoring;
      name;
      private_networking;
      region;
      resize_disk;
      size;
      ssh_keys;
      tags;
      user_data;
      volume_ids;
      vpc_uuid;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_droplet __resource);
  ()
