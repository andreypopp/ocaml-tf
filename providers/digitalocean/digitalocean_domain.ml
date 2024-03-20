(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_domain = {
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_domain) -> ()

let yojson_of_digitalocean_domain =
  (function
   | { id = v_id; ip_address = v_ip_address; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       `Assoc bnds
    : digitalocean_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_domain

[@@@deriving.end]

let digitalocean_domain ?id ?ip_address ~name () :
    digitalocean_domain =
  { id; ip_address; name }

type t = {
  id : string prop;
  ip_address : string prop;
  name : string prop;
  ttl : float prop;
  urn : string prop;
}

let make ?id ?ip_address ~name __id =
  let __type = "digitalocean_domain" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       ttl = Prop.computed __type __id "ttl";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_domain
        (digitalocean_domain ?id ?ip_address ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_address ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?ip_address ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
