(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_server_network = {
  alias_ips : string list option; [@option]  (** alias_ips *)
  network_id : float option; [@option]  (** network_id *)
  server_id : float;  (** server_id *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** hcloud_server_network *)

let hcloud_server_network ?alias_ips ?network_id ?subnet_id
    ~server_id __resource_id =
  let __resource_type = "hcloud_server_network" in
  let __resource = { alias_ips; network_id; server_id; subnet_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_server_network __resource);
  ()
