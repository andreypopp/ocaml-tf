(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_vpc_peering = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  vpc_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_vpc_peering) -> ()

let yojson_of_digitalocean_vpc_peering =
  (function
   | { id = v_id; name = v_name; vpc_ids = v_vpc_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_ids", arg in
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
    : digitalocean_vpc_peering -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_vpc_peering

[@@@deriving.end]

let digitalocean_vpc_peering ?id ?name ?vpc_ids () :
    digitalocean_vpc_peering =
  { id; name; vpc_ids }

type t = {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  vpc_ids : string list prop;
}

let make ?id ?name ?vpc_ids __id =
  let __type = "digitalocean_vpc_peering" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       vpc_ids = Prop.computed __type __id "vpc_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_vpc_peering
        (digitalocean_vpc_peering ?id ?name ?vpc_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?vpc_ids __id =
  let (r : _ Tf_core.resource) = make ?id ?name ?vpc_ids __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
