(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_turnstile_widget = {
  account_id : string prop;
  bot_fight_mode : bool prop option; [@option]
  domains : string prop list;
  id : string prop option; [@option]
  mode : string prop;
  name : string prop;
  offlabel : bool prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_turnstile_widget) -> ()

let yojson_of_cloudflare_turnstile_widget =
  (function
   | {
       account_id = v_account_id;
       bot_fight_mode = v_bot_fight_mode;
       domains = v_domains;
       id = v_id;
       mode = v_mode;
       name = v_name;
       offlabel = v_offlabel;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_offlabel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "offlabel", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_domains
         in
         ("domains", arg) :: bnds
       in
       let bnds =
         match v_bot_fight_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bot_fight_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_turnstile_widget ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_turnstile_widget

[@@@deriving.end]

let cloudflare_turnstile_widget ?bot_fight_mode ?id ?offlabel ?region
    ~account_id ~domains ~mode ~name () : cloudflare_turnstile_widget
    =
  {
    account_id;
    bot_fight_mode;
    domains;
    id;
    mode;
    name;
    offlabel;
    region;
  }

type t = {
  account_id : string prop;
  bot_fight_mode : bool prop;
  domains : string list prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  offlabel : bool prop;
  region : string prop;
  secret : string prop;
}

let make ?bot_fight_mode ?id ?offlabel ?region ~account_id ~domains
    ~mode ~name __id =
  let __type = "cloudflare_turnstile_widget" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       bot_fight_mode = Prop.computed __type __id "bot_fight_mode";
       domains = Prop.computed __type __id "domains";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       offlabel = Prop.computed __type __id "offlabel";
       region = Prop.computed __type __id "region";
       secret = Prop.computed __type __id "secret";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_turnstile_widget
        (cloudflare_turnstile_widget ?bot_fight_mode ?id ?offlabel
           ?region ~account_id ~domains ~mode ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?bot_fight_mode ?id ?offlabel ?region
    ~account_id ~domains ~mode ~name __id =
  let (r : _ Tf_core.resource) =
    make ?bot_fight_mode ?id ?offlabel ?region ~account_id ~domains
      ~mode ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
