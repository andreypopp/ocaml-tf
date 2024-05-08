(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type algorithm = {
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : algorithm) -> ()

let yojson_of_algorithm =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : algorithm -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_algorithm

[@@@deriving.end]

type target = {
  server_id : float prop option; [@option]
  type_ : string prop; [@key "type"]
  use_private_ip : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
  (function
   | {
       server_id = v_server_id;
       type_ = v_type_;
       use_private_ip = v_use_private_ip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_private_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_private_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_server_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

[@@@deriving.end]

type hcloud_load_balancer = {
  delete_protection : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  load_balancer_type : string prop;
  location : string prop option; [@option]
  name : string prop;
  network_zone : string prop option; [@option]
  algorithm : algorithm list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_load_balancer) -> ()

let yojson_of_hcloud_load_balancer =
  (function
   | {
       delete_protection = v_delete_protection;
       id = v_id;
       labels = v_labels;
       load_balancer_type = v_load_balancer_type;
       location = v_location;
       name = v_name;
       network_zone = v_network_zone;
       algorithm = v_algorithm;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg = (yojson_of_list yojson_of_target) v_target in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_algorithm then bnds
         else
           let arg =
             (yojson_of_list yojson_of_algorithm) v_algorithm
           in
           let bnd = "algorithm", arg in
           bnd :: bnds
       in
       let bnds =
         match v_network_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_zone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_type
         in
         ("load_balancer_type", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
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
         match v_delete_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_protection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_load_balancer

[@@@deriving.end]

let algorithm ?type_ () : algorithm = { type_ }

let target ?server_id ?use_private_ip ~type_ () : target =
  { server_id; type_; use_private_ip }

let hcloud_load_balancer ?delete_protection ?id ?labels ?location
    ?network_zone ?(algorithm = []) ~load_balancer_type ~name ~target
    () : hcloud_load_balancer =
  {
    delete_protection;
    id;
    labels;
    load_balancer_type;
    location;
    name;
    network_zone;
    algorithm;
    target;
  }

type t = {
  tf_name : string;
  delete_protection : bool prop;
  id : string prop;
  ipv4 : string prop;
  ipv6 : string prop;
  labels : (string * string) list prop;
  load_balancer_type : string prop;
  location : string prop;
  name : string prop;
  network_id : float prop;
  network_ip : string prop;
  network_zone : string prop;
}

let make ?delete_protection ?id ?labels ?location ?network_zone
    ?(algorithm = []) ~load_balancer_type ~name ~target __id =
  let __type = "hcloud_load_balancer" in
  let __attrs =
    ({
       tf_name = __id;
       delete_protection =
         Prop.computed __type __id "delete_protection";
       id = Prop.computed __type __id "id";
       ipv4 = Prop.computed __type __id "ipv4";
       ipv6 = Prop.computed __type __id "ipv6";
       labels = Prop.computed __type __id "labels";
       load_balancer_type =
         Prop.computed __type __id "load_balancer_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_id = Prop.computed __type __id "network_id";
       network_ip = Prop.computed __type __id "network_ip";
       network_zone = Prop.computed __type __id "network_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_load_balancer
        (hcloud_load_balancer ?delete_protection ?id ?labels
           ?location ?network_zone ~algorithm ~load_balancer_type
           ~name ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_protection ?id ?labels ?location
    ?network_zone ?(algorithm = []) ~load_balancer_type ~name ~target
    __id =
  let (r : _ Tf_core.resource) =
    make ?delete_protection ?id ?labels ?location ?network_zone
      ~algorithm ~load_balancer_type ~name ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
