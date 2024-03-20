(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_tunnel = {
  account_id : string prop;
  config_src : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_tunnel) -> ()

let yojson_of_cloudflare_tunnel =
  (function
   | {
       account_id = v_account_id;
       config_src = v_config_src;
       id = v_id;
       name = v_name;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_config_src with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config_src", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_tunnel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_tunnel

[@@@deriving.end]

let cloudflare_tunnel ?config_src ?id ~account_id ~name ~secret () :
    cloudflare_tunnel =
  { account_id; config_src; id; name; secret }

type t = {
  account_id : string prop;
  cname : string prop;
  config_src : string prop;
  id : string prop;
  name : string prop;
  secret : string prop;
  tunnel_token : string prop;
}

let make ?config_src ?id ~account_id ~name ~secret __id =
  let __type = "cloudflare_tunnel" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       cname = Prop.computed __type __id "cname";
       config_src = Prop.computed __type __id "config_src";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       secret = Prop.computed __type __id "secret";
       tunnel_token = Prop.computed __type __id "tunnel_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tunnel
        (cloudflare_tunnel ?config_src ?id ~account_id ~name ~secret
           ());
    attrs = __attrs;
  }

let register ?tf_module ?config_src ?id ~account_id ~name ~secret
    __id =
  let (r : _ Tf_core.resource) =
    make ?config_src ?id ~account_id ~name ~secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
