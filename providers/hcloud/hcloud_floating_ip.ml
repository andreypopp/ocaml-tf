(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_floating_ip = {
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  description : string prop option; [@option]  (** description *)
  home_location : string prop option; [@option]  (** home_location *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop option; [@option]  (** name *)
  server_id : float prop option; [@option]  (** server_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_floating_ip *)

let hcloud_floating_ip ?delete_protection ?description ?home_location
    ?id ?labels ?name ?server_id ~type_ () : hcloud_floating_ip =
  {
    delete_protection;
    description;
    home_location;
    id;
    labels;
    name;
    server_id;
    type_;
  }

type t = {
  delete_protection : bool prop;
  description : string prop;
  home_location : string prop;
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  server_id : float prop;
  type_ : string prop;
}

let register ?tf_module ?delete_protection ?description
    ?home_location ?id ?labels ?name ?server_id ~type_ __resource_id
    =
  let __resource_type = "hcloud_floating_ip" in
  let __resource =
    hcloud_floating_ip ?delete_protection ?description ?home_location
      ?id ?labels ?name ?server_id ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_floating_ip __resource);
  let __resource_attributes =
    ({
       delete_protection =
         Prop.computed __resource_type __resource_id
           "delete_protection";
       description =
         Prop.computed __resource_type __resource_id "description";
       home_location =
         Prop.computed __resource_type __resource_id "home_location";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       ip_network =
         Prop.computed __resource_type __resource_id "ip_network";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
