(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_network_route = {
  destination : string prop;  (** destination *)
  gateway : string prop;  (** gateway *)
  id : string prop option; [@option]  (** id *)
  network_id : float prop;  (** network_id *)
}
[@@deriving yojson_of]
(** hcloud_network_route *)

let hcloud_network_route ?id ~destination ~gateway ~network_id () :
    hcloud_network_route =
  { destination; gateway; id; network_id }

type t = {
  destination : string prop;
  gateway : string prop;
  id : string prop;
  network_id : float prop;
}

let register ?tf_module ?id ~destination ~gateway ~network_id
    __resource_id =
  let __resource_type = "hcloud_network_route" in
  let __resource =
    hcloud_network_route ?id ~destination ~gateway ~network_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_network_route __resource);
  let __resource_attributes =
    ({
       destination =
         Prop.computed __resource_type __resource_id "destination";
       gateway =
         Prop.computed __resource_type __resource_id "gateway";
       id = Prop.computed __resource_type __resource_id "id";
       network_id =
         Prop.computed __resource_type __resource_id "network_id";
     }
      : t)
  in
  __resource_attributes
