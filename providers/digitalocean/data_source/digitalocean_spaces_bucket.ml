(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_spaces_bucket = {
  id : string prop option; [@option]
  name : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_spaces_bucket) -> ()

let yojson_of_digitalocean_spaces_bucket =
  (function
   | { id = v_id; name = v_name; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_spaces_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_spaces_bucket

[@@@deriving.end]

let digitalocean_spaces_bucket ?id ~name ~region () :
    digitalocean_spaces_bucket =
  { id; name; region }

type t = {
  bucket_domain_name : string prop;
  endpoint : string prop;
  id : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

let make ?id ~name ~region __id =
  let __type = "digitalocean_spaces_bucket" in
  let __attrs =
    ({
       bucket_domain_name =
         Prop.computed __type __id "bucket_domain_name";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
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
      yojson_of_digitalocean_spaces_bucket
        (digitalocean_spaces_bucket ?id ~name ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~region __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
