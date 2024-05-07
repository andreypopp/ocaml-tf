(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_volume_snapshot = {
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  name_regex : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_volume_snapshot) -> ()

let yojson_of_digitalocean_volume_snapshot =
  (function
   | {
       id = v_id;
       most_recent = v_most_recent;
       name = v_name;
       name_regex = v_name_regex;
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
         match v_name_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_regex", arg in
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
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
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
    : digitalocean_volume_snapshot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_volume_snapshot

[@@@deriving.end]

let digitalocean_volume_snapshot ?id ?most_recent ?name ?name_regex
    ?region () : digitalocean_volume_snapshot =
  { id; most_recent; name; name_regex; region }

type t = {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  min_disk_size : float prop;
  most_recent : bool prop;
  name : string prop;
  name_regex : string prop;
  region : string prop;
  regions : string list prop;
  size : float prop;
  tags : string list prop;
  volume_id : string prop;
}

let make ?id ?most_recent ?name ?name_regex ?region __id =
  let __type = "digitalocean_volume_snapshot" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       min_disk_size = Prop.computed __type __id "min_disk_size";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       name_regex = Prop.computed __type __id "name_regex";
       region = Prop.computed __type __id "region";
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
        (digitalocean_volume_snapshot ?id ?most_recent ?name
           ?name_regex ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?most_recent ?name ?name_regex ?region
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?most_recent ?name ?name_regex ?region __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
