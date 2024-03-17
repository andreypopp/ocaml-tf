(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_volume = {
  automount : bool option; [@option]  (** automount *)
  delete_protection : bool option; [@option]
      (** delete_protection *)
  format : string option; [@option]  (** format *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]  (** labels *)
  location : string option; [@option]  (** location *)
  name : string;  (** name *)
  server_id : float option; [@option]  (** server_id *)
  size : float;  (** size *)
}
[@@deriving yojson_of]
(** hcloud_volume *)

let hcloud_volume ?automount ?delete_protection ?format ?id ?labels
    ?location ?server_id ~name ~size __resource_id =
  let __resource_type = "hcloud_volume" in
  let __resource =
    {
      automount;
      delete_protection;
      format;
      id;
      labels;
      location;
      name;
      server_id;
      size;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_volume __resource);
  ()
