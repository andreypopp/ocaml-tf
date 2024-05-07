(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_tunnel_route = {
  account_id : string prop;
  comment : string prop option; [@option]
  id : string prop option; [@option]
  network : string prop;
  tunnel_id : string prop;
  virtual_network_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_tunnel_route) -> ()

let yojson_of_cloudflare_tunnel_route =
  (function
   | {
       account_id = v_account_id;
       comment = v_comment;
       id = v_id;
       network = v_network;
       tunnel_id = v_tunnel_id;
       virtual_network_id = v_virtual_network_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_virtual_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tunnel_id in
         ("tunnel_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
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
    : cloudflare_tunnel_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_tunnel_route

[@@@deriving.end]

let cloudflare_tunnel_route ?comment ?id ?virtual_network_id
    ~account_id ~network ~tunnel_id () : cloudflare_tunnel_route =
  { account_id; comment; id; network; tunnel_id; virtual_network_id }

type t = {
  tf_name : string;
  account_id : string prop;
  comment : string prop;
  id : string prop;
  network : string prop;
  tunnel_id : string prop;
  virtual_network_id : string prop;
}

let make ?comment ?id ?virtual_network_id ~account_id ~network
    ~tunnel_id __id =
  let __type = "cloudflare_tunnel_route" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       comment = Prop.computed __type __id "comment";
       id = Prop.computed __type __id "id";
       network = Prop.computed __type __id "network";
       tunnel_id = Prop.computed __type __id "tunnel_id";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tunnel_route
        (cloudflare_tunnel_route ?comment ?id ?virtual_network_id
           ~account_id ~network ~tunnel_id ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?virtual_network_id ~account_id
    ~network ~tunnel_id __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?virtual_network_id ~account_id ~network
      ~tunnel_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
