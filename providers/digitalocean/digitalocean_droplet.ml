(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type digitalocean_droplet = {
  backups : bool prop option; [@option]
  droplet_agent : bool prop option; [@option]
  graceful_shutdown : bool prop option; [@option]
  id : string prop option; [@option]
  image : string prop;
  ipv6 : bool prop option; [@option]
  ipv6_address : string prop option; [@option]
  monitoring : bool prop option; [@option]
  name : string prop;
  private_networking : bool prop option; [@option]
  region : string prop option; [@option]
  resize_disk : bool prop option; [@option]
  size : string prop;
  ssh_keys : string prop list option; [@option]
  tags : string prop list option; [@option]
  user_data : string prop option; [@option]
  volume_ids : string prop list option; [@option]
  vpc_uuid : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_droplet) -> ()

let yojson_of_digitalocean_droplet =
  (function
   | {
       backups = v_backups;
       droplet_agent = v_droplet_agent;
       graceful_shutdown = v_graceful_shutdown;
       id = v_id;
       image = v_image;
       ipv6 = v_ipv6;
       ipv6_address = v_ipv6_address;
       monitoring = v_monitoring;
       name = v_name;
       private_networking = v_private_networking;
       region = v_region;
       resize_disk = v_resize_disk;
       size = v_size;
       ssh_keys = v_ssh_keys;
       tags = v_tags;
       user_data = v_user_data;
       volume_ids = v_volume_ids;
       vpc_uuid = v_vpc_uuid;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_vpc_uuid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_uuid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "volume_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ssh_keys", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         match v_resize_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "resize_disk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_networking with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_networking", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "monitoring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ipv6", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_graceful_shutdown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "graceful_shutdown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_droplet_agent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "droplet_agent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "backups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_droplet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_droplet

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
