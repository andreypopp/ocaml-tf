(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_firewall__apply_to = {
  label_selector : string option; [@option]  (** label_selector *)
  server : float option; [@option]  (** server *)
}
[@@deriving yojson_of]
(** hcloud_firewall__apply_to *)

type hcloud_firewall__rule = {
  description : string option; [@option]  (** description *)
  destination_ips : string list option; [@option]
      (** destination_ips *)
  direction : string;  (** direction *)
  port : string option; [@option]  (** port *)
  protocol : string;  (** protocol *)
  source_ips : string list option; [@option]  (** source_ips *)
}
[@@deriving yojson_of]
(** hcloud_firewall__rule *)

type hcloud_firewall = {
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]  (** labels *)
  name : string;  (** name *)
  apply_to : hcloud_firewall__apply_to list;
  rule : hcloud_firewall__rule list;
}
[@@deriving yojson_of]
(** hcloud_firewall *)

let hcloud_firewall ?id ?labels ~name ~apply_to ~rule __resource_id =
  let __resource_type = "hcloud_firewall" in
  let __resource = { id; labels; name; apply_to; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_firewall __resource);
  ()
