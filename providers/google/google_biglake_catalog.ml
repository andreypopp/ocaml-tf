(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_biglake_catalog__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_biglake_catalog__timeouts *)

type google_biglake_catalog = {
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The geographic location where the Catalog should reside. *)
  name : string prop;
      (** The name of the Catalog. Format:
projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId} *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_biglake_catalog__timeouts option;
}
[@@deriving yojson_of]
(** google_biglake_catalog *)

type t = {
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

let google_biglake_catalog ?id ?project ?timeouts ~location ~name
    __resource_id =
  let __resource_type = "google_biglake_catalog" in
  let __resource =
    ({ id; location; name; project; timeouts }
      : google_biglake_catalog)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_biglake_catalog __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       expire_time =
         Prop.computed __resource_type __resource_id "expire_time";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
