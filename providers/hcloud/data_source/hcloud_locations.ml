(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_locations = {
  descriptions : string prop list option; [@option]
  id : string prop option; [@option]
  location_ids : string prop list option; [@option]
  names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_locations) -> ()

let yojson_of_hcloud_locations =
  (function
   | {
       descriptions = v_descriptions;
       id = v_id;
       location_ids = v_location_ids;
       names = v_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "location_ids", arg in
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
         match v_descriptions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "descriptions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_locations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_locations

[@@@deriving.end]

let hcloud_locations ?descriptions ?id ?location_ids ?names () :
    hcloud_locations =
  { descriptions; id; location_ids; names }

type t = {
  descriptions : string list prop;
  id : string prop;
  location_ids : string list prop;
  locations : json prop;
  names : string list prop;
}

let make ?descriptions ?id ?location_ids ?names __id =
  let __type = "hcloud_locations" in
  let __attrs =
    ({
       descriptions = Prop.computed __type __id "descriptions";
       id = Prop.computed __type __id "id";
       location_ids = Prop.computed __type __id "location_ids";
       locations = Prop.computed __type __id "locations";
       names = Prop.computed __type __id "names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_locations
        (hcloud_locations ?descriptions ?id ?location_ids ?names ());
    attrs = __attrs;
  }

let register ?tf_module ?descriptions ?id ?location_ids ?names __id =
  let (r : _ Tf_core.resource) =
    make ?descriptions ?id ?location_ids ?names __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
