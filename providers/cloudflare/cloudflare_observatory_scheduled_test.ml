(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type cloudflare_observatory_scheduled_test = {
  frequency : string prop;
  id : string prop option; [@option]
  region : string prop;
  url : string prop;
  zone_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_observatory_scheduled_test) -> ()

let yojson_of_cloudflare_observatory_scheduled_test =
  (function
   | {
       frequency = v_frequency;
       id = v_id;
       region = v_region;
       url = v_url;
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
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_observatory_scheduled_test ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_observatory_scheduled_test

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let cloudflare_observatory_scheduled_test ?id ?timeouts ~frequency
    ~region ~url ~zone_id () : cloudflare_observatory_scheduled_test
    =
  { frequency; id; region; url; zone_id; timeouts }

type t = {
  tf_name : string;
  frequency : string prop;
  id : string prop;
  region : string prop;
  url : string prop;
  zone_id : string prop;
}

let make ?id ?timeouts ~frequency ~region ~url ~zone_id __id =
  let __type = "cloudflare_observatory_scheduled_test" in
  let __attrs =
    ({
       tf_name = __id;
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
       url = Prop.computed __type __id "url";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_observatory_scheduled_test
        (cloudflare_observatory_scheduled_test ?id ?timeouts
           ~frequency ~region ~url ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~frequency ~region ~url
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~frequency ~region ~url ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
