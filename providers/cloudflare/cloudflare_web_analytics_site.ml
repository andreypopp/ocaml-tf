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

type cloudflare_web_analytics_site = {
  account_id : string prop;
  auto_install : bool prop;
  host : string prop option; [@option]
  id : string prop option; [@option]
  zone_tag : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_web_analytics_site) -> ()

let yojson_of_cloudflare_web_analytics_site =
  (function
   | {
       account_id = v_account_id;
       auto_install = v_auto_install;
       host = v_host;
       id = v_id;
       zone_tag = v_zone_tag;
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
         match v_zone_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_tag", arg in
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
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_install in
         ("auto_install", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_web_analytics_site ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_web_analytics_site

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let cloudflare_web_analytics_site ?host ?id ?zone_tag ?timeouts
    ~account_id ~auto_install () : cloudflare_web_analytics_site =
  { account_id; auto_install; host; id; zone_tag; timeouts }

type t = {
  tf_name : string;
  account_id : string prop;
  auto_install : bool prop;
  host : string prop;
  id : string prop;
  ruleset_id : string prop;
  site_tag : string prop;
  site_token : string prop;
  snippet : string prop;
  zone_tag : string prop;
}

let make ?host ?id ?zone_tag ?timeouts ~account_id ~auto_install __id
    =
  let __type = "cloudflare_web_analytics_site" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       auto_install = Prop.computed __type __id "auto_install";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       ruleset_id = Prop.computed __type __id "ruleset_id";
       site_tag = Prop.computed __type __id "site_tag";
       site_token = Prop.computed __type __id "site_token";
       snippet = Prop.computed __type __id "snippet";
       zone_tag = Prop.computed __type __id "zone_tag";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_web_analytics_site
        (cloudflare_web_analytics_site ?host ?id ?zone_tag ?timeouts
           ~account_id ~auto_install ());
    attrs = __attrs;
  }

let register ?tf_module ?host ?id ?zone_tag ?timeouts ~account_id
    ~auto_install __id =
  let (r : _ Tf_core.resource) =
    make ?host ?id ?zone_tag ?timeouts ~account_id ~auto_install __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
