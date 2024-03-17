(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_droplet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** digitalocean_droplet__timeouts *)

type digitalocean_droplet = {
  backups : bool option; [@option]  (** backups *)
  droplet_agent : bool option; [@option]  (** droplet_agent *)
  graceful_shutdown : bool option; [@option]
      (** graceful_shutdown *)
  id : string option; [@option]  (** id *)
  image : string;  (** image *)
  ipv6 : bool option; [@option]  (** ipv6 *)
  ipv6_address : string option; [@option]  (** ipv6_address *)
  monitoring : bool option; [@option]  (** monitoring *)
  name : string;  (** name *)
  private_networking : bool option; [@option]
      (** private_networking *)
  region : string option; [@option]  (** region *)
  resize_disk : bool option; [@option]  (** resize_disk *)
  size : string;  (** size *)
  ssh_keys : string list option; [@option]  (** ssh_keys *)
  tags : string list option; [@option]  (** tags *)
  user_data : string option; [@option]  (** user_data *)
  volume_ids : string list option; [@option]  (** volume_ids *)
  vpc_uuid : string option; [@option]  (** vpc_uuid *)
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
