(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_region = {
  id : string prop option; [@option]
  slug : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_region) -> ()

let yojson_of_digitalocean_region =
  (function
   | { id = v_id; slug = v_slug } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slug in
         ("slug", arg) :: bnds
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
    : digitalocean_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_region

[@@@deriving.end]

let digitalocean_region ?id ~slug () : digitalocean_region =
  { id; slug }

type t = {
  tf_name : string;
  available : bool prop;
  features : string list prop;
  id : string prop;
  name : string prop;
  sizes : string list prop;
  slug : string prop;
}

let make ?id ~slug __id =
  let __type = "digitalocean_region" in
  let __attrs =
    ({
       tf_name = __id;
       available = Prop.computed __type __id "available";
       features = Prop.computed __type __id "features";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sizes = Prop.computed __type __id "sizes";
       slug = Prop.computed __type __id "slug";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_region
        (digitalocean_region ?id ~slug ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~slug __id =
  let (r : _ Tf_core.resource) = make ?id ~slug __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
