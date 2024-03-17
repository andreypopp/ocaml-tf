(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_biglake_catalog__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_biglake_catalog__timeouts *)

type google_biglake_catalog = {
  location : string;
      (** The geographic location where the Catalog should reside. *)
  name : string;
      (** The name of the Catalog. Format:
projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId} *)
  timeouts : google_biglake_catalog__timeouts option;
}
[@@deriving yojson_of]
(** google_biglake_catalog *)

let google_biglake_catalog ?timeouts ~location ~name __resource_id =
  let __resource_type = "google_biglake_catalog" in
  let __resource = { location; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_biglake_catalog __resource);
  ()
