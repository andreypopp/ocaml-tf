(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_load_balancer_target = {
  id : string prop option; [@option]  (** id *)
  ip : string prop option; [@option]  (** ip *)
  label_selector : string prop option; [@option]
      (** label_selector *)
  load_balancer_id : float prop;  (** load_balancer_id *)
  server_id : float prop option; [@option]  (** server_id *)
  type_ : string prop; [@key "type"]  (** type *)
  use_private_ip : bool prop option; [@option]  (** use_private_ip *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_target *)

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
