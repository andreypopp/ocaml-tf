(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?ip ?label_selector ?server_id
    ?use_private_ip ~load_balancer_id ~type_ __resource_id =
  let __resource_type = "hcloud_load_balancer_target" in
  let __resource =
    hcloud_load_balancer_target ?id ?ip ?label_selector ?server_id
      ?use_private_ip ~load_balancer_id ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_load_balancer_target __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ip = Prop.computed __resource_type __resource_id "ip";
       label_selector =
         Prop.computed __resource_type __resource_id "label_selector";
       load_balancer_id =
         Prop.computed __resource_type __resource_id
           "load_balancer_id";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       type_ = Prop.computed __resource_type __resource_id "type";
       use_private_ip =
         Prop.computed __resource_type __resource_id "use_private_ip";
     }
      : t)
  in
  __resource_attributes
