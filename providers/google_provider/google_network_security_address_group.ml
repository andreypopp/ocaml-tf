(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_security_address_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_security_address_group__timeouts *)

type google_network_security_address_group = {
  capacity : float;  (** Capacity of the Address Group. *)
  description : string option; [@option]
      (** Free-text description of the resource. *)
  id : string option; [@option]  (** id *)
  items : string list option; [@option]  (** List of items. *)
  labels : (string * string) list option; [@option]
      (** Set of label tags associated with the AddressGroup resource.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** The location of the gateway security policy.
The default value is 'global'. *)
  name : string;  (** Name of the AddressGroup resource. *)
  parent : string option; [@option]
      (** The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}. *)
  type_ : string; [@key "type"]
      (** The type of the Address Group. Possible values are IPV4 or IPV6. Possible values: [IPV4, IPV6] *)
  timeouts : google_network_security_address_group__timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_address_group *)

let google_network_security_address_group ?description ?id ?items
    ?labels ?parent ?timeouts ~capacity ~location ~name ~type_
    __resource_id =
  let __resource_type = "google_network_security_address_group" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_security_address_group __resource);
  ()
