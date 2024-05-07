(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_tiered_cache = {
  cache_type : string prop;
  id : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_tiered_cache) -> ()

let yojson_of_cloudflare_tiered_cache =
  (function
   | { cache_type = v_cache_type; id = v_id; zone_id = v_zone_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cache_type in
         ("cache_type", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_tiered_cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_tiered_cache

[@@@deriving.end]

let cloudflare_tiered_cache ?id ~cache_type ~zone_id () :
    cloudflare_tiered_cache =
  { cache_type; id; zone_id }

type t = {
  tf_name : string;
  cache_type : string prop;
  id : string prop;
  zone_id : string prop;
}

let make ?id ~cache_type ~zone_id __id =
  let __type = "cloudflare_tiered_cache" in
  let __attrs =
    ({
       tf_name = __id;
       cache_type = Prop.computed __type __id "cache_type";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tiered_cache
        (cloudflare_tiered_cache ?id ~cache_type ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cache_type ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cache_type ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
