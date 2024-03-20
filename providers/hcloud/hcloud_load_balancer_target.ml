(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_load_balancer_target = {
  id : string prop option; [@option]
  ip : string prop option; [@option]
  label_selector : string prop option; [@option]
  load_balancer_id : float prop;
  server_id : float prop option; [@option]
  type_ : string prop; [@key "type"]
  use_private_ip : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_load_balancer_target) -> ()

let yojson_of_hcloud_load_balancer_target =
  (function
   | {
       id = v_id;
       ip = v_ip;
       label_selector = v_label_selector;
       load_balancer_id = v_load_balancer_id;
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_load_balancer_id
         in
         ("load_balancer_id", arg) :: bnds
       in
       let bnds =
         match v_label_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label_selector", arg in
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
       `Assoc bnds
    : hcloud_load_balancer_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_load_balancer_target

[@@@deriving.end]

let hcloud_load_balancer_target ?id ?ip ?label_selector ?server_id
    ?use_private_ip ~load_balancer_id ~type_ () :
    hcloud_load_balancer_target =
  {
    id;
    ip;
    label_selector;
    load_balancer_id;
    server_id;
    type_;
    use_private_ip;
  }

type t = {
  id : string prop;
  ip : string prop;
  label_selector : string prop;
  load_balancer_id : float prop;
  server_id : float prop;
  type_ : string prop;
  use_private_ip : bool prop;
}

let make ?id ?ip ?label_selector ?server_id ?use_private_ip
    ~load_balancer_id ~type_ __id =
  let __type = "hcloud_load_balancer_target" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       label_selector = Prop.computed __type __id "label_selector";
       load_balancer_id =
         Prop.computed __type __id "load_balancer_id";
       server_id = Prop.computed __type __id "server_id";
       type_ = Prop.computed __type __id "type";
       use_private_ip = Prop.computed __type __id "use_private_ip";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_load_balancer_target
        (hcloud_load_balancer_target ?id ?ip ?label_selector
           ?server_id ?use_private_ip ~load_balancer_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip ?label_selector ?server_id
    ?use_private_ip ~load_balancer_id ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip ?label_selector ?server_id ?use_private_ip
      ~load_balancer_id ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
