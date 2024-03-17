(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_floating_ip = {
  delete_protection : bool option; [@option]
      (** delete_protection *)
  description : string option; [@option]  (** description *)
  home_location : string option; [@option]  (** home_location *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]  (** labels *)
  name : string option; [@option]  (** name *)
  server_id : float option; [@option]  (** server_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_floating_ip *)

let hcloud_floating_ip ?delete_protection ?description ?home_location
    ?id ?labels ?name ?server_id ~type_ __resource_id =
  let __resource_type = "hcloud_floating_ip" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_floating_ip __resource);
  ()
