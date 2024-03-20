(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_rdns = {
  dns_ptr : string prop;
  floating_ip_id : float prop option; [@option]
  id : string prop option; [@option]
  ip_address : string prop;
  load_balancer_id : float prop option; [@option]
  primary_ip_id : float prop option; [@option]
  server_id : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_rdns) -> ()

let yojson_of_hcloud_rdns =
  (function
   | {
       dns_ptr = v_dns_ptr;
       floating_ip_id = v_floating_ip_id;
       id = v_id;
       ip_address = v_ip_address;
       load_balancer_id = v_load_balancer_id;
       primary_ip_id = v_primary_ip_id;
       server_id = v_server_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_server_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_ip_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "primary_ip_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "load_balancer_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
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
         match v_floating_ip_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "floating_ip_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_ptr in
         ("dns_ptr", arg) :: bnds
       in
       `Assoc bnds
    : hcloud_rdns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_rdns

[@@@deriving.end]

let hcloud_rdns ?floating_ip_id ?id ?load_balancer_id ?primary_ip_id
    ?server_id ~dns_ptr ~ip_address () : hcloud_rdns =
  {
    dns_ptr;
    floating_ip_id;
    id;
    ip_address;
    load_balancer_id;
    primary_ip_id;
    server_id;
  }

type t = {
  dns_ptr : string prop;
  floating_ip_id : float prop;
  id : string prop;
  ip_address : string prop;
  load_balancer_id : float prop;
  primary_ip_id : float prop;
  server_id : float prop;
}

let make ?floating_ip_id ?id ?load_balancer_id ?primary_ip_id
    ?server_id ~dns_ptr ~ip_address __id =
  let __type = "hcloud_rdns" in
  let __attrs =
    ({
       dns_ptr = Prop.computed __type __id "dns_ptr";
       floating_ip_id = Prop.computed __type __id "floating_ip_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       load_balancer_id =
         Prop.computed __type __id "load_balancer_id";
       primary_ip_id = Prop.computed __type __id "primary_ip_id";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_rdns
        (hcloud_rdns ?floating_ip_id ?id ?load_balancer_id
           ?primary_ip_id ?server_id ~dns_ptr ~ip_address ());
    attrs = __attrs;
  }

let register ?tf_module ?floating_ip_id ?id ?load_balancer_id
    ?primary_ip_id ?server_id ~dns_ptr ~ip_address __id =
  let (r : _ Tf_core.resource) =
    make ?floating_ip_id ?id ?load_balancer_id ?primary_ip_id
      ?server_id ~dns_ptr ~ip_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
