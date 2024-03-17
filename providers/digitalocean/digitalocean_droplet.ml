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

type t = {
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

let digitalocean_droplet ?backups ?droplet_agent ?graceful_shutdown
    ?id ?ipv6 ?ipv6_address ?monitoring ?private_networking ?region
    ?resize_disk ?ssh_keys ?tags ?user_data ?volume_ids ?vpc_uuid
    ?timeouts ~image ~name ~size __resource_id =
  let __resource_type = "digitalocean_droplet" in
  let __resource =
    ({
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
      : digitalocean_droplet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_droplet __resource);
  let __resource_attributes =
    ({
       backups =
         Prop.computed __resource_type __resource_id "backups";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       disk = Prop.computed __resource_type __resource_id "disk";
       droplet_agent =
         Prop.computed __resource_type __resource_id "droplet_agent";
       graceful_shutdown =
         Prop.computed __resource_type __resource_id
           "graceful_shutdown";
       id = Prop.computed __resource_type __resource_id "id";
       image = Prop.computed __resource_type __resource_id "image";
       ipv4_address =
         Prop.computed __resource_type __resource_id "ipv4_address";
       ipv4_address_private =
         Prop.computed __resource_type __resource_id
           "ipv4_address_private";
       ipv6 = Prop.computed __resource_type __resource_id "ipv6";
       ipv6_address =
         Prop.computed __resource_type __resource_id "ipv6_address";
       locked = Prop.computed __resource_type __resource_id "locked";
       memory = Prop.computed __resource_type __resource_id "memory";
       monitoring =
         Prop.computed __resource_type __resource_id "monitoring";
       name = Prop.computed __resource_type __resource_id "name";
       price_hourly =
         Prop.computed __resource_type __resource_id "price_hourly";
       price_monthly =
         Prop.computed __resource_type __resource_id "price_monthly";
       private_networking =
         Prop.computed __resource_type __resource_id
           "private_networking";
       region = Prop.computed __resource_type __resource_id "region";
       resize_disk =
         Prop.computed __resource_type __resource_id "resize_disk";
       size = Prop.computed __resource_type __resource_id "size";
       ssh_keys =
         Prop.computed __resource_type __resource_id "ssh_keys";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       urn = Prop.computed __resource_type __resource_id "urn";
       user_data =
         Prop.computed __resource_type __resource_id "user_data";
       vcpus = Prop.computed __resource_type __resource_id "vcpus";
       volume_ids =
         Prop.computed __resource_type __resource_id "volume_ids";
       vpc_uuid =
         Prop.computed __resource_type __resource_id "vpc_uuid";
     }
      : t)
  in
  __resource_attributes
