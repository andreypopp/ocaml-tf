(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_load_balancer__algorithm = {
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer__algorithm *)

type hcloud_load_balancer__target = {
  server_id : float option; [@option]  (** server_id *)
  type_ : string; [@key "type"]  (** type *)
  use_private_ip : bool option; [@option]  (** use_private_ip *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer__target *)

type hcloud_load_balancer = {
  delete_protection : bool option; [@option]
      (** delete_protection *)
  load_balancer_type : string;  (** load_balancer_type *)
  name : string;  (** name *)
  algorithm : hcloud_load_balancer__algorithm list;
  target : hcloud_load_balancer__target list;
}
[@@deriving yojson_of]
(** hcloud_load_balancer *)

let hcloud_load_balancer ?delete_protection ~load_balancer_type ~name
    ~algorithm ~target __resource_id =
  let __resource_type = "hcloud_load_balancer" in
  let __resource =
    {
      delete_protection;
      load_balancer_type;
      name;
      algorithm;
      target;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_load_balancer __resource);
  ()
