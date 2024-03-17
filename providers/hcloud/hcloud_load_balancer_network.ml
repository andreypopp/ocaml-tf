(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_load_balancer_network = {
  enable_public_interface : bool prop option; [@option]
      (** enable_public_interface *)
  id : string prop option; [@option]  (** id *)
  ip : string prop option; [@option]  (** ip *)
  load_balancer_id : float prop;  (** load_balancer_id *)
  network_id : float prop option; [@option]  (** network_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_network *)

type t = {
  enable_public_interface : bool prop;
  id : string prop;
  ip : string prop;
  load_balancer_id : float prop;
  network_id : float prop;
  subnet_id : string prop;
}

let hcloud_load_balancer_network ?enable_public_interface ?id ?ip
    ?network_id ?subnet_id ~load_balancer_id __resource_id =
  let __resource_type = "hcloud_load_balancer_network" in
  let __resource =
    ({
       enable_public_interface;
       id;
       ip;
       load_balancer_id;
       network_id;
       subnet_id;
     }
      : hcloud_load_balancer_network)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_load_balancer_network __resource);
  let __resource_attributes =
    ({
       enable_public_interface =
         Prop.computed __resource_type __resource_id
           "enable_public_interface";
       id = Prop.computed __resource_type __resource_id "id";
       ip = Prop.computed __resource_type __resource_id "ip";
       load_balancer_id =
         Prop.computed __resource_type __resource_id
           "load_balancer_id";
       network_id =
         Prop.computed __resource_type __resource_id "network_id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
