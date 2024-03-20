(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_floating_ip = {
  droplet_id : float prop option; [@option]
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_floating_ip) -> ()

let yojson_of_digitalocean_floating_ip =
  (function
   | {
       droplet_id = v_droplet_id;
       id = v_id;
       ip_address = v_ip_address;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
       let bnds =
         match v_droplet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "droplet_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_floating_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_floating_ip

[@@@deriving.end]

let digitalocean_floating_ip ?droplet_id ?id ?ip_address ~region () :
    digitalocean_floating_ip =
  { droplet_id; id; ip_address; region }

type t = {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
  region : string prop;
  urn : string prop;
}

let make ?droplet_id ?id ?ip_address ~region __id =
  let __type = "digitalocean_floating_ip" in
  let __attrs =
    ({
       droplet_id = Prop.computed __type __id "droplet_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       region = Prop.computed __type __id "region";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_floating_ip
        (digitalocean_floating_ip ?droplet_id ?id ?ip_address ~region
           ());
    attrs = __attrs;
  }

let register ?tf_module ?droplet_id ?id ?ip_address ~region __id =
  let (r : _ Tf_core.resource) =
    make ?droplet_id ?id ?ip_address ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
