(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_volume = {
  description : string prop option; [@option]
  filesystem_type : string prop option; [@option]
  id : string prop option; [@option]
  initial_filesystem_label : string prop option; [@option]
  initial_filesystem_type : string prop option; [@option]
  name : string prop;
  region : string prop;
  size : float prop;
  snapshot_id : string prop option; [@option]
  tags : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_volume) -> ()

let yojson_of_digitalocean_volume =
  (function
   | {
       description = v_description;
       filesystem_type = v_filesystem_type;
       id = v_id;
       initial_filesystem_label = v_initial_filesystem_label;
       initial_filesystem_type = v_initial_filesystem_type;
       name = v_name;
       region = v_region;
       size = v_size;
       snapshot_id = v_snapshot_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_initial_filesystem_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "initial_filesystem_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_filesystem_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "initial_filesystem_label", arg in
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
         match v_filesystem_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filesystem_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_volume

[@@@deriving.end]

let digitalocean_volume ?description ?filesystem_type ?id
    ?initial_filesystem_label ?initial_filesystem_type ?snapshot_id
    ?tags ~name ~region ~size () : digitalocean_volume =
  {
    description;
    filesystem_type;
    id;
    initial_filesystem_label;
    initial_filesystem_type;
    name;
    region;
    size;
    snapshot_id;
    tags;
  }

type t = {
  description : string prop;
  droplet_ids : float list prop;
  filesystem_label : string prop;
  filesystem_type : string prop;
  id : string prop;
  initial_filesystem_label : string prop;
  initial_filesystem_type : string prop;
  name : string prop;
  region : string prop;
  size : float prop;
  snapshot_id : string prop;
  tags : string list prop;
  urn : string prop;
}

let make ?description ?filesystem_type ?id ?initial_filesystem_label
    ?initial_filesystem_type ?snapshot_id ?tags ~name ~region ~size
    __id =
  let __type = "digitalocean_volume" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       droplet_ids = Prop.computed __type __id "droplet_ids";
       filesystem_label =
         Prop.computed __type __id "filesystem_label";
       filesystem_type = Prop.computed __type __id "filesystem_type";
       id = Prop.computed __type __id "id";
       initial_filesystem_label =
         Prop.computed __type __id "initial_filesystem_label";
       initial_filesystem_type =
         Prop.computed __type __id "initial_filesystem_type";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       tags = Prop.computed __type __id "tags";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_volume
        (digitalocean_volume ?description ?filesystem_type ?id
           ?initial_filesystem_label ?initial_filesystem_type
           ?snapshot_id ?tags ~name ~region ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?filesystem_type ?id
    ?initial_filesystem_label ?initial_filesystem_type ?snapshot_id
    ?tags ~name ~region ~size __id =
  let (r : _ Tf_core.resource) =
    make ?description ?filesystem_type ?id ?initial_filesystem_label
      ?initial_filesystem_type ?snapshot_id ?tags ~name ~region ~size
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
