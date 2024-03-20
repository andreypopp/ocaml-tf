(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_load_balancer_network = {
  enable_public_interface : bool prop option; [@option]
  id : string prop option; [@option]
  ip : string prop option; [@option]
  load_balancer_id : float prop;
  network_id : float prop option; [@option]
  subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_load_balancer_network) -> ()

let yojson_of_hcloud_load_balancer_network =
  (function
   | {
       enable_public_interface = v_enable_public_interface;
       id = v_id;
       ip = v_ip;
       load_balancer_id = v_load_balancer_id;
       network_id = v_network_id;
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
         match v_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "network_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_load_balancer_id
         in
         ("load_balancer_id", arg) :: bnds
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
         match v_enable_public_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_public_interface", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_load_balancer_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_load_balancer_network

[@@@deriving.end]

let hcloud_load_balancer_network ?enable_public_interface ?id ?ip
    ?network_id ?subnet_id ~load_balancer_id () :
    hcloud_load_balancer_network =
  {
    enable_public_interface;
    id;
    ip;
    load_balancer_id;
    network_id;
    subnet_id;
  }

type t = {
  enable_public_interface : bool prop;
  id : string prop;
  ip : string prop;
  load_balancer_id : float prop;
  network_id : float prop;
  subnet_id : string prop;
}

let make ?enable_public_interface ?id ?ip ?network_id ?subnet_id
    ~load_balancer_id __id =
  let __type = "hcloud_load_balancer_network" in
  let __attrs =
    ({
       enable_public_interface =
         Prop.computed __type __id "enable_public_interface";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       load_balancer_id =
         Prop.computed __type __id "load_balancer_id";
       network_id = Prop.computed __type __id "network_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_load_balancer_network
        (hcloud_load_balancer_network ?enable_public_interface ?id
           ?ip ?network_id ?subnet_id ~load_balancer_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_public_interface ?id ?ip ?network_id
    ?subnet_id ~load_balancer_id __id =
  let (r : _ Tf_core.resource) =
    make ?enable_public_interface ?id ?ip ?network_id ?subnet_id
      ~load_balancer_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
