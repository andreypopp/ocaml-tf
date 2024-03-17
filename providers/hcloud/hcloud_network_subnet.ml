(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_network_subnet = {
  id : string prop option; [@option]  (** id *)
  ip_range : string prop;  (** ip_range *)
  network_id : float prop;  (** network_id *)
  network_zone : string prop;  (** network_zone *)
  type_ : string prop; [@key "type"]  (** type *)
  vswitch_id : float prop option; [@option]  (** vswitch_id *)
}
[@@deriving yojson_of]
(** hcloud_network_subnet *)

type t = {
  gateway : string prop;
  id : string prop;
  ip_range : string prop;
  network_id : float prop;
  network_zone : string prop;
  type_ : string prop;
  vswitch_id : float prop;
}

let hcloud_network_subnet ?id ?vswitch_id ~ip_range ~network_id
    ~network_zone ~type_ __resource_id =
  let __resource_type = "hcloud_network_subnet" in
  let __resource =
    ({ id; ip_range; network_id; network_zone; type_; vswitch_id }
      : hcloud_network_subnet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_network_subnet __resource);
  let __resource_attributes =
    ({
       gateway =
         Prop.computed __resource_type __resource_id "gateway";
       id = Prop.computed __resource_type __resource_id "id";
       ip_range =
         Prop.computed __resource_type __resource_id "ip_range";
       network_id =
         Prop.computed __resource_type __resource_id "network_id";
       network_zone =
         Prop.computed __resource_type __resource_id "network_zone";
       type_ = Prop.computed __resource_type __resource_id "type";
       vswitch_id =
         Prop.computed __resource_type __resource_id "vswitch_id";
     }
      : t)
  in
  __resource_attributes
