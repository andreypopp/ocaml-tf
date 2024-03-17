(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_network_subnet = {
  ip_range : string;  (** ip_range *)
  network_id : float;  (** network_id *)
  network_zone : string;  (** network_zone *)
  type_ : string; [@key "type"]  (** type *)
  vswitch_id : float option; [@option]  (** vswitch_id *)
}
[@@deriving yojson_of]
(** hcloud_network_subnet *)

let hcloud_network_subnet ?vswitch_id ~ip_range ~network_id
    ~network_zone ~type_ __resource_id =
  let __resource_type = "hcloud_network_subnet" in
  let __resource =
    { ip_range; network_id; network_zone; type_; vswitch_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_network_subnet __resource);
  ()
