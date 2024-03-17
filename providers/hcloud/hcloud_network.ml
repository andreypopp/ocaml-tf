(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_network = {
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  expose_routes_to_vswitch : bool prop option; [@option]
      (** Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active. *)
  id : string prop option; [@option]  (** id *)
  ip_range : string prop;  (** ip_range *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** hcloud_network *)

type t = {
  delete_protection : bool prop;
  expose_routes_to_vswitch : bool prop;
  id : string prop;
  ip_range : string prop;
  labels : (string * string) list prop;
  name : string prop;
}

let hcloud_network ?delete_protection ?expose_routes_to_vswitch ?id
    ?labels ~ip_range ~name __resource_id =
  let __resource_type = "hcloud_network" in
  let __resource =
    ({
       delete_protection;
       expose_routes_to_vswitch;
       id;
       ip_range;
       labels;
       name;
     }
      : hcloud_network)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_network __resource);
  let __resource_attributes =
    ({
       delete_protection =
         Prop.computed __resource_type __resource_id
           "delete_protection";
       expose_routes_to_vswitch =
         Prop.computed __resource_type __resource_id
           "expose_routes_to_vswitch";
       id = Prop.computed __resource_type __resource_id "id";
       ip_range =
         Prop.computed __resource_type __resource_id "ip_range";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
