(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_worker_route = {
  id : string prop option; [@option]
  pattern : string prop;
  script_name : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_worker_route) -> ()

let yojson_of_cloudflare_worker_route =
  (function
   | {
       id = v_id;
       pattern = v_pattern;
       script_name = v_script_name;
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
         match v_script_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
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
    : cloudflare_worker_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_worker_route

[@@@deriving.end]

let cloudflare_worker_route ?id ?script_name ~pattern ~zone_id () :
    cloudflare_worker_route =
  { id; pattern; script_name; zone_id }

type t = {
  tf_name : string;
  id : string prop;
  pattern : string prop;
  script_name : string prop;
  zone_id : string prop;
}

let make ?id ?script_name ~pattern ~zone_id __id =
  let __type = "cloudflare_worker_route" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       pattern = Prop.computed __type __id "pattern";
       script_name = Prop.computed __type __id "script_name";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_route
        (cloudflare_worker_route ?id ?script_name ~pattern ~zone_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?script_name ~pattern ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?script_name ~pattern ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
