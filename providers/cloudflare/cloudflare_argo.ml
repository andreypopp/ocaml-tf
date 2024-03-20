(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_argo = {
  id : string prop option; [@option]
  smart_routing : string prop option; [@option]
  tiered_caching : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_argo) -> ()

let yojson_of_cloudflare_argo =
  (function
   | {
       id = v_id;
       smart_routing = v_smart_routing;
       tiered_caching = v_tiered_caching;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_tiered_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tiered_caching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_smart_routing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "smart_routing", arg in
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
    : cloudflare_argo -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_argo

[@@@deriving.end]

let cloudflare_argo ?id ?smart_routing ?tiered_caching ~zone_id () :
    cloudflare_argo =
  { id; smart_routing; tiered_caching; zone_id }

type t = {
  id : string prop;
  smart_routing : string prop;
  tiered_caching : string prop;
  zone_id : string prop;
}

let make ?id ?smart_routing ?tiered_caching ~zone_id __id =
  let __type = "cloudflare_argo" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       smart_routing = Prop.computed __type __id "smart_routing";
       tiered_caching = Prop.computed __type __id "tiered_caching";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_argo
        (cloudflare_argo ?id ?smart_routing ?tiered_caching ~zone_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?smart_routing ?tiered_caching ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?smart_routing ?tiered_caching ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
