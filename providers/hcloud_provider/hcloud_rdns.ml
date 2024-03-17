(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type hcloud_rdns = {
  dns_ptr : string;  (** dns_ptr *)
  floating_ip_id : float option; [@option]  (** floating_ip_id *)
  ip_address : string;  (** ip_address *)
  load_balancer_id : float option; [@option]  (** load_balancer_id *)
  primary_ip_id : float option; [@option]  (** primary_ip_id *)
  server_id : float option; [@option]  (** server_id *)
}
[@@deriving yojson_of]
(** hcloud_rdns *)

let hcloud_rdns ?floating_ip_id ?load_balancer_id ?primary_ip_id
    ?server_id ~dns_ptr ~ip_address __resource_id =
  let __resource_type = "hcloud_rdns" in
  let __resource =
    {
      dns_ptr;
      floating_ip_id;
      ip_address;
      load_balancer_id;
      primary_ip_id;
      server_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_rdns __resource);
  ()
