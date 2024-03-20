(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_droplet *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let digitalocean_droplet ?backups ?droplet_agent ?graceful_shutdown
    ?id ?ipv6 ?ipv6_address ?monitoring ?private_networking ?region
    ?resize_disk ?ssh_keys ?tags ?user_data ?volume_ids ?vpc_uuid
    ?timeouts ~image ~name ~size () : digitalocean_droplet =
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

let make ?backups ?droplet_agent ?graceful_shutdown ?id ?ipv6
    ?ipv6_address ?monitoring ?private_networking ?region
    ?resize_disk ?ssh_keys ?tags ?user_data ?volume_ids ?vpc_uuid
    ?timeouts ~image ~name ~size __id =
  let __type = "digitalocean_droplet" in
  let __attrs =
    ({
       backups = Prop.computed __type __id "backups";
       created_at = Prop.computed __type __id "created_at";
       disk = Prop.computed __type __id "disk";
       droplet_agent = Prop.computed __type __id "droplet_agent";
       graceful_shutdown =
         Prop.computed __type __id "graceful_shutdown";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       ipv4_address = Prop.computed __type __id "ipv4_address";
       ipv4_address_private =
         Prop.computed __type __id "ipv4_address_private";
       ipv6 = Prop.computed __type __id "ipv6";
       ipv6_address = Prop.computed __type __id "ipv6_address";
       locked = Prop.computed __type __id "locked";
       memory = Prop.computed __type __id "memory";
       monitoring = Prop.computed __type __id "monitoring";
       name = Prop.computed __type __id "name";
       price_hourly = Prop.computed __type __id "price_hourly";
       price_monthly = Prop.computed __type __id "price_monthly";
       private_networking =
         Prop.computed __type __id "private_networking";
       region = Prop.computed __type __id "region";
       resize_disk = Prop.computed __type __id "resize_disk";
       size = Prop.computed __type __id "size";
       ssh_keys = Prop.computed __type __id "ssh_keys";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       urn = Prop.computed __type __id "urn";
       user_data = Prop.computed __type __id "user_data";
       vcpus = Prop.computed __type __id "vcpus";
       volume_ids = Prop.computed __type __id "volume_ids";
       vpc_uuid = Prop.computed __type __id "vpc_uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_droplet
        (digitalocean_droplet ?backups ?droplet_agent
           ?graceful_shutdown ?id ?ipv6 ?ipv6_address ?monitoring
           ?private_networking ?region ?resize_disk ?ssh_keys ?tags
           ?user_data ?volume_ids ?vpc_uuid ?timeouts ~image ~name
           ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?backups ?droplet_agent ?graceful_shutdown
    ?id ?ipv6 ?ipv6_address ?monitoring ?private_networking ?region
    ?resize_disk ?ssh_keys ?tags ?user_data ?volume_ids ?vpc_uuid
    ?timeouts ~image ~name ~size __id =
  let (r : _ Tf_core.resource) =
    make ?backups ?droplet_agent ?graceful_shutdown ?id ?ipv6
      ?ipv6_address ?monitoring ?private_networking ?region
      ?resize_disk ?ssh_keys ?tags ?user_data ?volume_ids ?vpc_uuid
      ?timeouts ~image ~name ~size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
