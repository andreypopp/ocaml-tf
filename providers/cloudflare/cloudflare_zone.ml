(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_zone = {
  account_id : string prop;
  id : string prop option; [@option]
  jump_start : bool prop option; [@option]
  paused : bool prop option; [@option]
  plan : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  vanity_name_servers : string prop list option; [@option]
  zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_zone) -> ()

let yojson_of_cloudflare_zone =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       jump_start = v_jump_start;
       paused = v_paused;
       plan = v_plan;
       type_ = v_type_;
       vanity_name_servers = v_vanity_name_servers;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         match v_vanity_name_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vanity_name_servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_plan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "plan", arg in
             bnd :: bnds
       in
       let bnds =
         match v_paused with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "paused", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jump_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "jump_start", arg in
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_zone

[@@@deriving.end]

let cloudflare_zone ?id ?jump_start ?paused ?plan ?type_
    ?vanity_name_servers ~account_id ~zone () : cloudflare_zone =
  {
    account_id;
    id;
    jump_start;
    paused;
    plan;
    type_;
    vanity_name_servers;
    zone;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  jump_start : bool prop;
  meta : (string * bool) list prop;
  name_servers : string list prop;
  paused : bool prop;
  plan : string prop;
  status : string prop;
  type_ : string prop;
  vanity_name_servers : string list prop;
  verification_key : string prop;
  zone : string prop;
}

let make ?id ?jump_start ?paused ?plan ?type_ ?vanity_name_servers
    ~account_id ~zone __id =
  let __type = "cloudflare_zone" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       jump_start = Prop.computed __type __id "jump_start";
       meta = Prop.computed __type __id "meta";
       name_servers = Prop.computed __type __id "name_servers";
       paused = Prop.computed __type __id "paused";
       plan = Prop.computed __type __id "plan";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
       vanity_name_servers =
         Prop.computed __type __id "vanity_name_servers";
       verification_key =
         Prop.computed __type __id "verification_key";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone
        (cloudflare_zone ?id ?jump_start ?paused ?plan ?type_
           ?vanity_name_servers ~account_id ~zone ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?jump_start ?paused ?plan ?type_
    ?vanity_name_servers ~account_id ~zone __id =
  let (r : _ Tf_core.resource) =
    make ?id ?jump_start ?paused ?plan ?type_ ?vanity_name_servers
      ~account_id ~zone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
