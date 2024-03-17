(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_custom_image__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** digitalocean_custom_image__timeouts *)

type digitalocean_custom_image = {
  description : string option; [@option]  (** description *)
  distribution : string option; [@option]  (** distribution *)
  name : string;  (** name *)
  regions : string list;  (** regions *)
  tags : string list option; [@option]  (** tags *)
  url : string;  (** url *)
  timeouts : digitalocean_custom_image__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_custom_image *)

let digitalocean_custom_image ?description ?distribution ?tags
    ?timeouts ~name ~regions ~url __resource_id =
  let __resource_type = "digitalocean_custom_image" in
  let __resource =
    { description; distribution; name; regions; tags; url; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_custom_image __resource);
  ()
