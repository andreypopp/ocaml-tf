(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_vpc = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_vpc) -> ()

let yojson_of_digitalocean_vpc =
  (function
   | { id = v_id; name = v_name; region = v_region } ->
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_vpc

[@@@deriving.end]

let digitalocean_vpc ?id ?name ?region () : digitalocean_vpc =
  { id; name; region }

type t = {
  tf_name : string;
  created_at : string prop;
  default : bool prop;
  description : string prop;
  id : string prop;
  ip_range : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

let make ?id ?name ?region __id =
  let __type = "digitalocean_vpc" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       default = Prop.computed __type __id "default";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_vpc
        (digitalocean_vpc ?id ?name ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?region __id =
  let (r : _ Tf_core.resource) = make ?id ?name ?region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
