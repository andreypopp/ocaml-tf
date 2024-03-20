(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_waiting_room_settings = {
  id : string prop option; [@option]
  search_engine_crawler_bypass : bool prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_waiting_room_settings) -> ()

let yojson_of_cloudflare_waiting_room_settings =
  (function
   | {
       id = v_id;
       search_engine_crawler_bypass = v_search_engine_crawler_bypass;
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
         match v_search_engine_crawler_bypass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "search_engine_crawler_bypass", arg in
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
    : cloudflare_waiting_room_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_waiting_room_settings

[@@@deriving.end]

let cloudflare_waiting_room_settings ?id
    ?search_engine_crawler_bypass ~zone_id () :
    cloudflare_waiting_room_settings =
  { id; search_engine_crawler_bypass; zone_id }

type t = {
  id : string prop;
  search_engine_crawler_bypass : bool prop;
  zone_id : string prop;
}

let make ?id ?search_engine_crawler_bypass ~zone_id __id =
  let __type = "cloudflare_waiting_room_settings" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       search_engine_crawler_bypass =
         Prop.computed __type __id "search_engine_crawler_bypass";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_waiting_room_settings
        (cloudflare_waiting_room_settings ?id
           ?search_engine_crawler_bypass ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?search_engine_crawler_bypass ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?search_engine_crawler_bypass ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
