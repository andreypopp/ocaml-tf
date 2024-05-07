(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_tunnel_virtual_network = {
  account_id : string prop;
  comment : string prop option; [@option]
  id : string prop option; [@option]
  is_default_network : bool prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_tunnel_virtual_network) -> ()

let yojson_of_cloudflare_tunnel_virtual_network =
  (function
   | {
       account_id = v_account_id;
       comment = v_comment;
       id = v_id;
       is_default_network = v_is_default_network;
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
         match v_is_default_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default_network", arg in
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
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
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

let cloudflare_tunnel_virtual_network ?comment ?id
    ?is_default_network ~account_id ~name () :
    cloudflare_tunnel_virtual_network =
  { account_id; comment; id; is_default_network; name }

type t = {
  tf_name : string;
  account_id : string prop;
  comment : string prop;
  id : string prop;
  is_default_network : bool prop;
  name : string prop;
}

let make ?comment ?id ?is_default_network ~account_id ~name __id =
  let __type = "cloudflare_tunnel_virtual_network" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       comment = Prop.computed __type __id "comment";
       id = Prop.computed __type __id "id";
       is_default_network =
         Prop.computed __type __id "is_default_network";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tunnel_virtual_network
        (cloudflare_tunnel_virtual_network ?comment ?id
           ?is_default_network ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?is_default_network ~account_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?is_default_network ~account_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
