(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_firewall_attachment = {
  firewall_id : float;  (** firewall_id *)
  id : string option; [@option]  (** id *)
  label_selectors : string list option; [@option]
      (** label_selectors *)
  server_ids : float list option; [@option]  (** server_ids *)
}
[@@deriving yojson_of]
(** hcloud_firewall_attachment *)

let hcloud_firewall_attachment ?id ?label_selectors ?server_ids
    ~firewall_id __resource_id =
  let __resource_type = "hcloud_firewall_attachment" in
  let __resource =
    { firewall_id; id; label_selectors; server_ids }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_firewall_attachment __resource);
  ()
