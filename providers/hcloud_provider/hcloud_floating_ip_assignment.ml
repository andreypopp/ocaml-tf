(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_floating_ip_assignment = {
  floating_ip_id : float prop;  (** floating_ip_id *)
  id : string prop option; [@option]  (** id *)
  server_id : float prop;  (** server_id *)
}
[@@deriving yojson_of]
(** hcloud_floating_ip_assignment *)

let hcloud_floating_ip_assignment ?id ~floating_ip_id ~server_id
    __resource_id =
  let __resource_type = "hcloud_floating_ip_assignment" in
  let __resource = { floating_ip_id; id; server_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_floating_ip_assignment __resource);
  ()
