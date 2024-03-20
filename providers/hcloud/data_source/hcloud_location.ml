(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_location = {
  id : float prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_location) -> ()

let yojson_of_hcloud_location =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_location

[@@@deriving.end]

let hcloud_location ?id ?name () : hcloud_location = { id; name }

type t = {
  city : string prop;
  country : string prop;
  description : string prop;
  id : float prop;
  latitude : float prop;
  longitude : float prop;
  name : string prop;
  network_zone : string prop;
}

let make ?id ?name __id =
  let __type = "hcloud_location" in
  let __attrs =
    ({
       city = Prop.computed __type __id "city";
       country = Prop.computed __type __id "country";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       latitude = Prop.computed __type __id "latitude";
       longitude = Prop.computed __type __id "longitude";
       name = Prop.computed __type __id "name";
       network_zone = Prop.computed __type __id "network_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_hcloud_location (hcloud_location ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
