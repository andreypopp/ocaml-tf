(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_tag = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_tag) -> ()

let yojson_of_digitalocean_tag =
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
    : digitalocean_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_tag

[@@@deriving.end]

let digitalocean_tag ?id ~name () : digitalocean_tag = { id; name }

type t = {
  tf_name : string;
  databases_count : float prop;
  droplets_count : float prop;
  id : string prop;
  images_count : float prop;
  name : string prop;
  total_resource_count : float prop;
  volume_snapshots_count : float prop;
  volumes_count : float prop;
}

let make ?id ~name __id =
  let __type = "digitalocean_tag" in
  let __attrs =
    ({
       tf_name = __id;
       databases_count = Prop.computed __type __id "databases_count";
       droplets_count = Prop.computed __type __id "droplets_count";
       id = Prop.computed __type __id "id";
       images_count = Prop.computed __type __id "images_count";
       name = Prop.computed __type __id "name";
       total_resource_count =
         Prop.computed __type __id "total_resource_count";
       volume_snapshots_count =
         Prop.computed __type __id "volume_snapshots_count";
       volumes_count = Prop.computed __type __id "volumes_count";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_digitalocean_tag (digitalocean_tag ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
