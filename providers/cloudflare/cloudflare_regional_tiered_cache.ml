(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_regional_tiered_cache = {
  id : string prop option; [@option]
  value : string prop;
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_regional_tiered_cache) -> ()

let yojson_of_cloudflare_regional_tiered_cache =
  (function
   | { id = v_id; value = v_value; zone_id = v_zone_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
    : cloudflare_regional_tiered_cache ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_regional_tiered_cache

[@@@deriving.end]

let cloudflare_regional_tiered_cache ?id ~value ~zone_id () :
    cloudflare_regional_tiered_cache =
  { id; value; zone_id }

type t = {
  tf_name : string;
  id : string prop;
  value : string prop;
  zone_id : string prop;
}

let make ?id ~value ~zone_id __id =
  let __type = "cloudflare_regional_tiered_cache" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       value = Prop.computed __type __id "value";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_regional_tiered_cache
        (cloudflare_regional_tiered_cache ?id ~value ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~value ~zone_id __id =
  let (r : _ Tf_core.resource) = make ?id ~value ~zone_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
