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
  image : string;  (** image *)
  ipv6 : bool option; [@option]  (** ipv6 *)
  monitoring : bool option; [@option]  (** monitoring *)
  name : string;  (** name *)
  resize_disk : bool option; [@option]  (** resize_disk *)
  size : string;  (** size *)
  ssh_keys : string list option; [@option]  (** ssh_keys *)
  tags : string list option; [@option]  (** tags *)
  user_data : string option; [@option]  (** user_data *)
  timeouts : digitalocean_droplet__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_droplet *)

let digitalocean_droplet ?backups ?droplet_agent ?graceful_shutdown
    ?ipv6 ?monitoring ?resize_disk ?ssh_keys ?tags ?user_data
    ?timeouts ~image ~name ~size __resource_id =
  let __resource_type = "digitalocean_droplet" in
  let __resource =
    {
      backups;
      droplet_agent;
      graceful_shutdown;
      image;
      ipv6;
      monitoring;
      name;
      resize_disk;
      size;
      ssh_keys;
      tags;
      user_data;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_droplet __resource);
  ()
