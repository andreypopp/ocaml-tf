(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_server_network = {
  alias_ips : string prop list option; [@option]  (** alias_ips *)
  id : string prop option; [@option]  (** id *)
  ip : string prop option; [@option]  (** ip *)
  network_id : float prop option; [@option]  (** network_id *)
  server_id : float prop;  (** server_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** hcloud_server_network *)

let hcloud_server_network ?alias_ips ?id ?ip ?network_id ?subnet_id
    ~server_id __resource_id =
  let __resource_type = "hcloud_server_network" in
  let __resource =
    { alias_ips; id; ip; network_id; server_id; subnet_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_server_network __resource);
  ()
