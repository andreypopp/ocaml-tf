(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  all : bool prop option; [@option]
  key : string prop;
  match_by : string prop option; [@option]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       all = v_all;
       key = v_key;
       match_by = v_match_by;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_match_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "match_by", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type sort = {
  direction : string prop option; [@option]
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sort) -> ()

let yojson_of_sort =
  (function
   | { direction = v_direction; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "direction", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sort -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sort

[@@@deriving.end]

type droplets = {
  backups : bool prop;
  created_at : string prop;
  disk : float prop;
  id : float prop;
  image : string prop;
  ipv4_address : string prop;
  ipv4_address_private : string prop;
  ipv6 : bool prop;
  ipv6_address : string prop;
  ipv6_address_private : string prop;
  locked : bool prop;
  memory : float prop;
  monitoring : bool prop;
  name : string prop;
  price_hourly : float prop;
  price_monthly : float prop;
  private_networking : bool prop;
  region : string prop;
  size : string prop;
  status : string prop;
  tags : string prop list; [@default []] [@yojson_drop_default ( = )]
  urn : string prop;
  vcpus : float prop;
  volume_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_uuid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : droplets) -> ()

let yojson_of_droplets =
  (function
   | {
       backups = v_backups;
       created_at = v_created_at;
       disk = v_disk;
       id = v_id;
       image = v_image;
       ipv4_address = v_ipv4_address;
       ipv4_address_private = v_ipv4_address_private;
       ipv6 = v_ipv6;
       ipv6_address = v_ipv6_address;
       ipv6_address_private = v_ipv6_address_private;
       locked = v_locked;
       memory = v_memory;
       monitoring = v_monitoring;
       name = v_name;
       price_hourly = v_price_hourly;
       price_monthly = v_price_monthly;
       private_networking = v_private_networking;
       region = v_region;
       size = v_size;
       status = v_status;
       tags = v_tags;
       urn = v_urn;
       vcpus = v_vcpus;
       volume_ids = v_volume_ids;
       vpc_uuid = v_vpc_uuid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_uuid in
         ("vpc_uuid", arg) :: bnds
       in
       let bnds =
         if [] = v_volume_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_volume_ids
           in
           let bnd = "volume_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_vcpus in
         ("vcpus", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_urn in
         ("urn", arg) :: bnds
       in
       let bnds =
         if [] = v_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_private_networking
         in
         ("private_networking", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_price_monthly in
         ("price_monthly", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_price_hourly in
         ("price_hourly", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_monitoring in
         ("monitoring", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory in
         ("memory", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_locked in
         ("locked", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipv6_address_private
         in
         ("ipv6_address_private", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv6_address in
         ("ipv6_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ipv6 in
         ("ipv6", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipv4_address_private
         in
         ("ipv4_address_private", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv4_address in
         ("ipv4_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk in
         ("disk", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_backups in
         ("backups", arg) :: bnds
       in
       `Assoc bnds
    : droplets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_droplets

[@@@deriving.end]

type digitalocean_droplets = {
  id : string prop option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  sort : sort list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_droplets) -> ()

let yojson_of_digitalocean_droplets =
  (function
   | { id = v_id; filter = v_filter; sort = v_sort } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sort then bnds
         else
           let arg = (yojson_of_list yojson_of_sort) v_sort in
           let bnd = "sort", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_droplets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_droplets

[@@@deriving.end]

let filter ?all ?match_by ~key ~values () : filter =
  { all; key; match_by; values }

let sort ?direction ~key () : sort = { direction; key }

let digitalocean_droplets ?id ?(sort = []) ~filter () :
    digitalocean_droplets =
  { id; filter; sort }

type t = {
  tf_name : string;
  droplets : droplets list prop;
  id : string prop;
}

let make ?id ?(sort = []) ~filter __id =
  let __type = "digitalocean_droplets" in
  let __attrs =
    ({
       tf_name = __id;
       droplets = Prop.computed __type __id "droplets";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_droplets
        (digitalocean_droplets ?id ~sort ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(sort = []) ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ~sort ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
