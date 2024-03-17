(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_security_address_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_security_address_group__timeouts *)

type google_network_security_address_group = {
  capacity : float prop;  (** Capacity of the Address Group. *)
  description : string prop option; [@option]
      (** Free-text description of the resource. *)
  id : string prop option; [@option]  (** id *)
  items : string prop list option; [@option]  (** List of items. *)
  labels : (string * string prop) list option; [@option]
      (** Set of label tags associated with the AddressGroup resource.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The location of the gateway security policy.
The default value is 'global'. *)
  name : string prop;  (** Name of the AddressGroup resource. *)
  parent : string prop option; [@option]
      (** The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}. *)
  type_ : string prop; [@key "type"]
      (** The type of the Address Group. Possible values are IPV4 or IPV6. Possible values: [IPV4, IPV6] *)
  timeouts : google_network_security_address_group__timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_address_group *)

type t = {
  capacity : float prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  items : string list prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
}

let google_network_security_address_group ?description ?id ?items
    ?labels ?parent ?timeouts ~capacity ~location ~name ~type_
    __resource_id =
  let __resource_type = "google_network_security_address_group" in
  let __resource =
    ({
       capacity;
       description;
       id;
       items;
       labels;
       location;
       name;
       parent;
       type_;
       timeouts;
     }
      : google_network_security_address_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_security_address_group __resource);
  let __resource_attributes =
    ({
       capacity =
         Prop.computed __resource_type __resource_id "capacity";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       items = Prop.computed __resource_type __resource_id "items";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       type_ = Prop.computed __resource_type __resource_id "type";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
