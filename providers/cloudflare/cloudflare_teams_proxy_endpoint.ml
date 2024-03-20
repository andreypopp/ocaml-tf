(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_teams_proxy_endpoint = {
  account_id : string prop;
  id : string prop option; [@option]
  ips : string prop list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_teams_proxy_endpoint) -> ()

let yojson_of_cloudflare_teams_proxy_endpoint =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       ips = v_ips;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_ips
         in
         ("ips", arg) :: bnds
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
    : cloudflare_teams_proxy_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_teams_proxy_endpoint

[@@@deriving.end]

let cloudflare_teams_proxy_endpoint ?id ~account_id ~ips ~name () :
    cloudflare_teams_proxy_endpoint =
  { account_id; id; ips; name }

type t = {
  account_id : string prop;
  id : string prop;
  ips : string list prop;
  name : string prop;
  subdomain : string prop;
}

let make ?id ~account_id ~ips ~name __id =
  let __type = "cloudflare_teams_proxy_endpoint" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       ips = Prop.computed __type __id "ips";
       name = Prop.computed __type __id "name";
       subdomain = Prop.computed __type __id "subdomain";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_teams_proxy_endpoint
        (cloudflare_teams_proxy_endpoint ?id ~account_id ~ips ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~ips ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~ips ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
