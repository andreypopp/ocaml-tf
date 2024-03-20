(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type cloudflare_regional_hostname = {
  hostname : string prop;
  id : string prop option; [@option]
  region_key : string prop;
  zone_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_regional_hostname) -> ()

let yojson_of_cloudflare_regional_hostname =
  (function
   | {
       hostname = v_hostname;
       id = v_id;
       region_key = v_region_key;
       zone_id = v_zone_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_key in
         ("region_key", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_regional_hostname ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_regional_hostname

[@@@deriving.end]

let timeouts ?create ?update () : timeouts = { create; update }

let cloudflare_regional_hostname ?id ?timeouts ~hostname ~region_key
    ~zone_id () : cloudflare_regional_hostname =
  { hostname; id; region_key; zone_id; timeouts }

type t = {
  created_on : string prop;
  hostname : string prop;
  id : string prop;
  region_key : string prop;
  zone_id : string prop;
}

let make ?id ?timeouts ~hostname ~region_key ~zone_id __id =
  let __type = "cloudflare_regional_hostname" in
  let __attrs =
    ({
       created_on = Prop.computed __type __id "created_on";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       region_key = Prop.computed __type __id "region_key";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_regional_hostname
        (cloudflare_regional_hostname ?id ?timeouts ~hostname
           ~region_key ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~hostname ~region_key ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~hostname ~region_key ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
