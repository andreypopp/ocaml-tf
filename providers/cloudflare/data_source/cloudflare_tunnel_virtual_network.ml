(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_tunnel_virtual_network = {
  account_id : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_tunnel_virtual_network) -> ()

let yojson_of_cloudflare_tunnel_virtual_network =
  (function
   | { account_id = v_account_id; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_tunnel_virtual_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_tunnel_virtual_network

[@@@deriving.end]

let cloudflare_tunnel_virtual_network ?id ~account_id ~name () :
    cloudflare_tunnel_virtual_network =
  { account_id; id; name }

type t = {
  account_id : string prop;
  comment : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
}

let make ?id ~account_id ~name __id =
  let __type = "cloudflare_tunnel_virtual_network" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       comment = Prop.computed __type __id "comment";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tunnel_virtual_network
        (cloudflare_tunnel_virtual_network ?id ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
