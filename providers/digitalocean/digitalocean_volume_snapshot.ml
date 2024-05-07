(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_volume_snapshot = {
  id : string prop option; [@option]
  name : string prop;
  tags : string prop list option; [@option]
  volume_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_volume_snapshot) -> ()

let yojson_of_digitalocean_volume_snapshot =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       volume_id = v_volume_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
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
    : digitalocean_volume_snapshot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_volume_snapshot

[@@@deriving.end]

let digitalocean_volume_snapshot ?id ?tags ~name ~volume_id () :
    digitalocean_volume_snapshot =
  { id; name; tags; volume_id }

type t = {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  min_disk_size : float prop;
  name : string prop;
  regions : string list prop;
  size : float prop;
  tags : string list prop;
  volume_id : string prop;
}

let make ?id ?tags ~name ~volume_id __id =
  let __type = "digitalocean_volume_snapshot" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       min_disk_size = Prop.computed __type __id "min_disk_size";
       name = Prop.computed __type __id "name";
       regions = Prop.computed __type __id "regions";
       size = Prop.computed __type __id "size";
       tags = Prop.computed __type __id "tags";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_volume_snapshot
        (digitalocean_volume_snapshot ?id ?tags ~name ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~name ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
