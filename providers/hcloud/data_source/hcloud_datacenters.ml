(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_datacenters = {
  datacenter_ids : string prop list option; [@option]
  descriptions : string prop list option; [@option]
  id : string prop option; [@option]
  names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_datacenters) -> ()

let yojson_of_hcloud_datacenters =
  (function
   | {
       datacenter_ids = v_datacenter_ids;
       descriptions = v_descriptions;
       id = v_id;
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
       let bnds =
         match v_datacenter_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "datacenter_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_datacenters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_datacenters

[@@@deriving.end]

let hcloud_datacenters ?datacenter_ids ?descriptions ?id ?names () :
    hcloud_datacenters =
  { datacenter_ids; descriptions; id; names }

type t = {
  tf_name : string;
  datacenter_ids : string list prop;
  datacenters : json prop;
  descriptions : string list prop;
  id : string prop;
  names : string list prop;
}

let make ?datacenter_ids ?descriptions ?id ?names __id =
  let __type = "hcloud_datacenters" in
  let __attrs =
    ({
       tf_name = __id;
       datacenter_ids = Prop.computed __type __id "datacenter_ids";
       datacenters = Prop.computed __type __id "datacenters";
       descriptions = Prop.computed __type __id "descriptions";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_datacenters
        (hcloud_datacenters ?datacenter_ids ?descriptions ?id ?names
           ());
    attrs = __attrs;
  }

let register ?tf_module ?datacenter_ids ?descriptions ?id ?names __id
    =
  let (r : _ Tf_core.resource) =
    make ?datacenter_ids ?descriptions ?id ?names __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
