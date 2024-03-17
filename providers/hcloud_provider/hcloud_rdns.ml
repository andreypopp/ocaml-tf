(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_rdns = {
  dns_ptr : string prop;  (** dns_ptr *)
  floating_ip_id : float prop option; [@option]
      (** floating_ip_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop;  (** ip_address *)
  load_balancer_id : float prop option; [@option]
      (** load_balancer_id *)
  primary_ip_id : float prop option; [@option]  (** primary_ip_id *)
  server_id : float prop option; [@option]  (** server_id *)
}
[@@deriving yojson_of]
(** hcloud_rdns *)

type t = {
  dns_ptr : string prop;
  floating_ip_id : float prop;
  id : string prop;
  ip_address : string prop;
  load_balancer_id : float prop;
  primary_ip_id : float prop;
  server_id : float prop;
}

let hcloud_rdns ?floating_ip_id ?id ?load_balancer_id ?primary_ip_id
    ?server_id ~dns_ptr ~ip_address __resource_id =
  let __resource_type = "hcloud_rdns" in
  let __resource =
    ({
       dns_ptr;
       floating_ip_id;
       id;
       ip_address;
       load_balancer_id;
       primary_ip_id;
       server_id;
     }
      : hcloud_rdns)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_rdns __resource);
  let __resource_attributes =
    ({
       dns_ptr =
         Prop.computed __resource_type __resource_id "dns_ptr";
       floating_ip_id =
         Prop.computed __resource_type __resource_id "floating_ip_id";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       load_balancer_id =
         Prop.computed __resource_type __resource_id
           "load_balancer_id";
       primary_ip_id =
         Prop.computed __resource_type __resource_id "primary_ip_id";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
     }
      : t)
  in
  __resource_attributes
