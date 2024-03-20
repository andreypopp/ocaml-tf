(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_volume = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_volume) -> ()

let yojson_of_digitalocean_volume =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

let digitalocean_volume ?description ?id ?region ~name () :
    digitalocean_volume =
  { description; id; name; region }

type t = {
  description : string prop;
  droplet_ids : float list prop;
  filesystem_label : string prop;
  filesystem_type : string prop;
  id : string prop;
  name : string prop;
  region : string prop;
  size : float prop;
  tags : string list prop;
  urn : string prop;
}

let make ?description ?id ?region ~name __id =
  let __type = "digitalocean_volume" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       droplet_ids = Prop.computed __type __id "droplet_ids";
       filesystem_label =
         Prop.computed __type __id "filesystem_label";
       filesystem_type = Prop.computed __type __id "filesystem_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
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
        (digitalocean_volume ?description ?id ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
