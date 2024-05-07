(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_bot_management = {
  auto_update_model : bool prop option; [@option]
  enable_js : bool prop option; [@option]
  fight_mode : bool prop option; [@option]
  id : string prop option; [@option]
  optimize_wordpress : bool prop option; [@option]
  sbfm_definitely_automated : string prop option; [@option]
  sbfm_likely_automated : string prop option; [@option]
  sbfm_static_resource_protection : bool prop option; [@option]
  sbfm_verified_bots : string prop option; [@option]
  suppress_session_score : bool prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_bot_management) -> ()

let yojson_of_cloudflare_bot_management =
  (function
   | {
       auto_update_model = v_auto_update_model;
       enable_js = v_enable_js;
       fight_mode = v_fight_mode;
       id = v_id;
       optimize_wordpress = v_optimize_wordpress;
       sbfm_definitely_automated = v_sbfm_definitely_automated;
       sbfm_likely_automated = v_sbfm_likely_automated;
       sbfm_static_resource_protection =
         v_sbfm_static_resource_protection;
       sbfm_verified_bots = v_sbfm_verified_bots;
       suppress_session_score = v_suppress_session_score;
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
         match v_suppress_session_score with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suppress_session_score", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sbfm_verified_bots with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sbfm_verified_bots", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sbfm_static_resource_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sbfm_static_resource_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sbfm_likely_automated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sbfm_likely_automated", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sbfm_definitely_automated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sbfm_definitely_automated", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optimize_wordpress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optimize_wordpress", arg in
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
       let bnds =
         match v_fight_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fight_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_js with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_js", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_update_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_update_model", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_bot_management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_bot_management

[@@@deriving.end]

let cloudflare_bot_management ?auto_update_model ?enable_js
    ?fight_mode ?id ?optimize_wordpress ?sbfm_definitely_automated
    ?sbfm_likely_automated ?sbfm_static_resource_protection
    ?sbfm_verified_bots ?suppress_session_score ~zone_id () :
    cloudflare_bot_management =
  {
    auto_update_model;
    enable_js;
    fight_mode;
    id;
    optimize_wordpress;
    sbfm_definitely_automated;
    sbfm_likely_automated;
    sbfm_static_resource_protection;
    sbfm_verified_bots;
    suppress_session_score;
    zone_id;
  }

type t = {
  tf_name : string;
  auto_update_model : bool prop;
  enable_js : bool prop;
  fight_mode : bool prop;
  id : string prop;
  optimize_wordpress : bool prop;
  sbfm_definitely_automated : string prop;
  sbfm_likely_automated : string prop;
  sbfm_static_resource_protection : bool prop;
  sbfm_verified_bots : string prop;
  suppress_session_score : bool prop;
  using_latest_model : bool prop;
  zone_id : string prop;
}

let make ?auto_update_model ?enable_js ?fight_mode ?id
    ?optimize_wordpress ?sbfm_definitely_automated
    ?sbfm_likely_automated ?sbfm_static_resource_protection
    ?sbfm_verified_bots ?suppress_session_score ~zone_id __id =
  let __type = "cloudflare_bot_management" in
  let __attrs =
    ({
       tf_name = __id;
       auto_update_model =
         Prop.computed __type __id "auto_update_model";
       enable_js = Prop.computed __type __id "enable_js";
       fight_mode = Prop.computed __type __id "fight_mode";
       id = Prop.computed __type __id "id";
       optimize_wordpress =
         Prop.computed __type __id "optimize_wordpress";
       sbfm_definitely_automated =
         Prop.computed __type __id "sbfm_definitely_automated";
       sbfm_likely_automated =
         Prop.computed __type __id "sbfm_likely_automated";
       sbfm_static_resource_protection =
         Prop.computed __type __id "sbfm_static_resource_protection";
       sbfm_verified_bots =
         Prop.computed __type __id "sbfm_verified_bots";
       suppress_session_score =
         Prop.computed __type __id "suppress_session_score";
       using_latest_model =
         Prop.computed __type __id "using_latest_model";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_bot_management
        (cloudflare_bot_management ?auto_update_model ?enable_js
           ?fight_mode ?id ?optimize_wordpress
           ?sbfm_definitely_automated ?sbfm_likely_automated
           ?sbfm_static_resource_protection ?sbfm_verified_bots
           ?suppress_session_score ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_update_model ?enable_js ?fight_mode ?id
    ?optimize_wordpress ?sbfm_definitely_automated
    ?sbfm_likely_automated ?sbfm_static_resource_protection
    ?sbfm_verified_bots ?suppress_session_score ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_update_model ?enable_js ?fight_mode ?id
      ?optimize_wordpress ?sbfm_definitely_automated
      ?sbfm_likely_automated ?sbfm_static_resource_protection
      ?sbfm_verified_bots ?suppress_session_score ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
