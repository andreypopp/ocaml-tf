(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_volume = {
  description : string option; [@option]  (** description *)
  initial_filesystem_label : string option; [@option]
      (** initial_filesystem_label *)
  initial_filesystem_type : string option; [@option]
      (** initial_filesystem_type *)
  name : string;  (** name *)
  region : string;  (** region *)
  size : float;  (** size *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  tags : string list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** digitalocean_volume *)

let digitalocean_volume ?description ?initial_filesystem_label
    ?initial_filesystem_type ?snapshot_id ?tags ~name ~region ~size
    __resource_id =
  let __resource_type = "digitalocean_volume" in
  let __resource =
    {
      description;
      initial_filesystem_label;
      initial_filesystem_type;
      name;
      region;
      size;
      snapshot_id;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_volume __resource);
  ()
