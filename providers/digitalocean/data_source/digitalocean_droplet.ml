(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_droplet = {
  id : float prop option; [@option]
  name : string prop option; [@option]
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_droplet) -> ()

let yojson_of_digitalocean_droplet =
  (function
   | { id = v_id; name = v_name; tag = v_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_droplet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_droplet

[@@@deriving.end]

let digitalocean_droplet ?id ?name ?tag () : digitalocean_droplet =
  { id; name; tag }

type t = {
  tf_name : string;
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
  tag : string prop;
  tags : string list prop;
  urn : string prop;
  vcpus : float prop;
  volume_ids : string list prop;
  vpc_uuid : string prop;
}

let make ?id ?name ?tag __id =
  let __type = "digitalocean_droplet" in
  let __attrs =
    ({
       tf_name = __id;
       backups = Prop.computed __type __id "backups";
       created_at = Prop.computed __type __id "created_at";
       disk = Prop.computed __type __id "disk";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       ipv4_address = Prop.computed __type __id "ipv4_address";
       ipv4_address_private =
         Prop.computed __type __id "ipv4_address_private";
       ipv6 = Prop.computed __type __id "ipv6";
       ipv6_address = Prop.computed __type __id "ipv6_address";
       ipv6_address_private =
         Prop.computed __type __id "ipv6_address_private";
       locked = Prop.computed __type __id "locked";
       memory = Prop.computed __type __id "memory";
       monitoring = Prop.computed __type __id "monitoring";
       name = Prop.computed __type __id "name";
       price_hourly = Prop.computed __type __id "price_hourly";
       price_monthly = Prop.computed __type __id "price_monthly";
       private_networking =
         Prop.computed __type __id "private_networking";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
       status = Prop.computed __type __id "status";
       tag = Prop.computed __type __id "tag";
       tags = Prop.computed __type __id "tags";
       urn = Prop.computed __type __id "urn";
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
        (digitalocean_droplet ?id ?name ?tag ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tag __id =
  let (r : _ Tf_core.resource) = make ?id ?name ?tag __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
