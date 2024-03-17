(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_firewall_attachment = {
  firewall_id : float prop;  (** firewall_id *)
  id : string prop option; [@option]  (** id *)
  label_selectors : string prop list option; [@option]
      (** label_selectors *)
  server_ids : float prop list option; [@option]  (** server_ids *)
}
[@@deriving yojson_of]
(** hcloud_firewall_attachment *)

type t = {
  firewall_id : float prop;
  id : string prop;
  label_selectors : string list prop;
  server_ids : float list prop;
}

let hcloud_firewall_attachment ?id ?label_selectors ?server_ids
    ~firewall_id __resource_id =
  let __resource_type = "hcloud_firewall_attachment" in
  let __resource =
    ({ firewall_id; id; label_selectors; server_ids }
      : hcloud_firewall_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_firewall_attachment __resource);
  let __resource_attributes =
    ({
       firewall_id =
         Prop.computed __resource_type __resource_id "firewall_id";
       id = Prop.computed __resource_type __resource_id "id";
       label_selectors =
         Prop.computed __resource_type __resource_id
           "label_selectors";
       server_ids =
         Prop.computed __resource_type __resource_id "server_ids";
     }
      : t)
  in
  __resource_attributes
