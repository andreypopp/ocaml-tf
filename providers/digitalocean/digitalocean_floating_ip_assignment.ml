(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_floating_ip_assignment = {
  droplet_id : float prop;
  id : string prop option; [@option]
  ip_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_floating_ip_assignment) -> ()

let yojson_of_digitalocean_floating_ip_assignment =
  (function
   | {
       droplet_id = v_droplet_id;
       id = v_id;
       ip_address = v_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_droplet_id in
         ("droplet_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_floating_ip_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_floating_ip_assignment

[@@@deriving.end]

let digitalocean_floating_ip_assignment ?id ~droplet_id ~ip_address
    () : digitalocean_floating_ip_assignment =
  { droplet_id; id; ip_address }

type t = {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
}

let make ?id ~droplet_id ~ip_address __id =
  let __type = "digitalocean_floating_ip_assignment" in
  let __attrs =
    ({
       droplet_id = Prop.computed __type __id "droplet_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_floating_ip_assignment
        (digitalocean_floating_ip_assignment ?id ~droplet_id
           ~ip_address ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~droplet_id ~ip_address __id =
  let (r : _ Tf_core.resource) =
    make ?id ~droplet_id ~ip_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
