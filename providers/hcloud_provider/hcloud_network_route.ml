(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_network_route = {
  destination : string;  (** destination *)
  gateway : string;  (** gateway *)
  id : string option; [@option]  (** id *)
  network_id : float;  (** network_id *)
}
[@@deriving yojson_of]
(** hcloud_network_route *)

let hcloud_network_route ?id ~destination ~gateway ~network_id
    __resource_id =
  let __resource_type = "hcloud_network_route" in
  let __resource = { destination; gateway; id; network_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_network_route __resource);
  ()
