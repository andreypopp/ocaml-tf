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

type cloudflare_web_analytics_rule = {
  account_id : string prop;
  host : string prop;
  id : string prop option; [@option]
  inclusive : bool prop;
  is_paused : bool prop;
  paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ruleset_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_web_analytics_rule) -> ()

let yojson_of_cloudflare_web_analytics_rule =
  (function
   | {
       account_id = v_account_id;
       host = v_host;
       id = v_id;
       inclusive = v_inclusive;
       is_paused = v_is_paused;
       paths = v_paths;
       ruleset_id = v_ruleset_id;
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
         let arg = yojson_of_prop yojson_of_string v_ruleset_id in
         ("ruleset_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_paths then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_paths
           in
           let bnd = "paths", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_paused in
         ("is_paused", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_inclusive in
         ("inclusive", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_web_analytics_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_web_analytics_rule

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let cloudflare_web_analytics_rule ?id ?timeouts ~account_id ~host
    ~inclusive ~is_paused ~paths ~ruleset_id () :
    cloudflare_web_analytics_rule =
  {
    account_id;
    host;
    id;
    inclusive;
    is_paused;
    paths;
    ruleset_id;
    timeouts;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  host : string prop;
  id : string prop;
  inclusive : bool prop;
  is_paused : bool prop;
  paths : string list prop;
  ruleset_id : string prop;
}

let make ?id ?timeouts ~account_id ~host ~inclusive ~is_paused ~paths
    ~ruleset_id __id =
  let __type = "cloudflare_web_analytics_rule" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       inclusive = Prop.computed __type __id "inclusive";
       is_paused = Prop.computed __type __id "is_paused";
       paths = Prop.computed __type __id "paths";
       ruleset_id = Prop.computed __type __id "ruleset_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_web_analytics_rule
        (cloudflare_web_analytics_rule ?id ?timeouts ~account_id
           ~host ~inclusive ~is_paused ~paths ~ruleset_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_id ~host ~inclusive
    ~is_paused ~paths ~ruleset_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_id ~host ~inclusive ~is_paused ~paths
      ~ruleset_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
