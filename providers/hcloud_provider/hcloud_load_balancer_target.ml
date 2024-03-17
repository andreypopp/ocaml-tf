(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_load_balancer_target = {
  id : string option; [@option]  (** id *)
  ip : string option; [@option]  (** ip *)
  label_selector : string option; [@option]  (** label_selector *)
  load_balancer_id : float;  (** load_balancer_id *)
  server_id : float option; [@option]  (** server_id *)
  type_ : string; [@key "type"]  (** type *)
  use_private_ip : bool option; [@option]  (** use_private_ip *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_target *)

let hcloud_load_balancer_target ?id ?ip ?label_selector ?server_id
    ?use_private_ip ~load_balancer_id ~type_ __resource_id =
  let __resource_type = "hcloud_load_balancer_target" in
  let __resource =
    {
      id;
      ip;
      label_selector;
      load_balancer_id;
      server_id;
      type_;
      use_private_ip;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_load_balancer_target __resource);
  ()
