(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_container_registry = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_container_registry) -> ()

let yojson_of_digitalocean_container_registry =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : digitalocean_container_registry ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_container_registry

[@@@deriving.end]

let digitalocean_container_registry ?id ~name () :
    digitalocean_container_registry =
  { id; name }

type t = {
  tf_name : string;
  created_at : string prop;
  endpoint : string prop;
  id : string prop;
  name : string prop;
  region : string prop;
  server_url : string prop;
  storage_usage_bytes : float prop;
  subscription_tier_slug : string prop;
}

let make ?id ~name __id =
  let __type = "digitalocean_container_registry" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       server_url = Prop.computed __type __id "server_url";
       storage_usage_bytes =
         Prop.computed __type __id "storage_usage_bytes";
       subscription_tier_slug =
         Prop.computed __type __id "subscription_tier_slug";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_container_registry
        (digitalocean_container_registry ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
