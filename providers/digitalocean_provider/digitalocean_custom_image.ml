(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_custom_image__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** digitalocean_custom_image__timeouts *)

type digitalocean_custom_image = {
  description : string prop option; [@option]  (** description *)
  distribution : string prop option; [@option]  (** distribution *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  regions : string prop list;  (** regions *)
  tags : string prop list option; [@option]  (** tags *)
  url : string prop;  (** url *)
  timeouts : digitalocean_custom_image__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_custom_image *)

let digitalocean_custom_image ?description ?distribution ?id ?tags
    ?timeouts ~name ~regions ~url __resource_id =
  let __resource_type = "digitalocean_custom_image" in
  let __resource =
    {
      description;
      distribution;
      id;
      name;
      regions;
      tags;
      url;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_custom_image __resource);
  ()
