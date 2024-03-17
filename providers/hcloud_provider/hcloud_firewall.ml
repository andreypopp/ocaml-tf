(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_firewall__apply_to = {
  label_selector : string prop option; [@option]
      (** label_selector *)
  server : float prop option; [@option]  (** server *)
}
[@@deriving yojson_of]
(** hcloud_firewall__apply_to *)

type hcloud_firewall__rule = {
  description : string prop option; [@option]  (** description *)
  destination_ips : string prop list option; [@option]
      (** destination_ips *)
  direction : string prop;  (** direction *)
  port : string prop option; [@option]  (** port *)
  protocol : string prop;  (** protocol *)
  source_ips : string prop list option; [@option]  (** source_ips *)
}
[@@deriving yojson_of]
(** hcloud_firewall__rule *)

type hcloud_firewall = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
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
