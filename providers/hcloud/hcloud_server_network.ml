(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_server_network = {
  alias_ips : string prop list option; [@option]
  id : string prop option; [@option]
  ip : string prop option; [@option]
  network_id : float prop option; [@option]
  server_id : float prop;
  subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_server_network) -> ()

let yojson_of_hcloud_server_network =
  (function
   | {
       alias_ips = v_alias_ips;
       id = v_id;
       ip = v_ip;
       network_id = v_network_id;
       server_id = v_server_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         match v_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "network_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip", arg in
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
         match v_alias_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alias_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_server_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_server_network

[@@@deriving.end]

let hcloud_server_network ?alias_ips ?id ?ip ?network_id ?subnet_id
    ~server_id () : hcloud_server_network =
  { alias_ips; id; ip; network_id; server_id; subnet_id }

type t = {
  alias_ips : string list prop;
  id : string prop;
  ip : string prop;
  mac_address : string prop;
  network_id : float prop;
  server_id : float prop;
  subnet_id : string prop;
}

let make ?alias_ips ?id ?ip ?network_id ?subnet_id ~server_id __id =
  let __type = "hcloud_server_network" in
  let __attrs =
    ({
       alias_ips = Prop.computed __type __id "alias_ips";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       mac_address = Prop.computed __type __id "mac_address";
       network_id = Prop.computed __type __id "network_id";
       server_id = Prop.computed __type __id "server_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_server_network
        (hcloud_server_network ?alias_ips ?id ?ip ?network_id
           ?subnet_id ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_ips ?id ?ip ?network_id ?subnet_id
    ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?alias_ips ?id ?ip ?network_id ?subnet_id ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
