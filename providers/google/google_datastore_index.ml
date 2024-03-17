(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_datastore_index__properties = {
  direction : string prop;
      (** The direction the index should optimize for sorting. Possible values: [ASCENDING, DESCENDING] *)
  name : string prop;  (** The property name to index. *)
}
[@@deriving yojson_of]
(** An ordered list of properties to index on. *)

type google_datastore_index__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_datastore_index__timeouts *)

type google_datastore_index = {
  ancestor : string prop option; [@option]
      (** Policy for including ancestors in the index. Default value: NONE Possible values: [NONE, ALL_ANCESTORS] *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;
      (** The entity kind which the index applies to. *)
  project : string prop option; [@option]  (** project *)
  properties : google_datastore_index__properties list;
  timeouts : google_datastore_index__timeouts option;
}
[@@deriving yojson_of]
(** google_datastore_index *)

type t = {
  ancestor : string prop;
  id : string prop;
  index_id : string prop;
  kind : string prop;
  project : string prop;
}

let google_datastore_index ?ancestor ?id ?project ?timeouts ~kind
    ~properties __resource_id =
  let __resource_type = "google_datastore_index" in
  let __resource =
    ({ ancestor; id; kind; project; properties; timeouts }
      : google_datastore_index)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_datastore_index __resource);
  let __resource_attributes =
    ({
       ancestor =
         Prop.computed __resource_type __resource_id "ancestor";
       id = Prop.computed __resource_type __resource_id "id";
       index_id =
         Prop.computed __resource_type __resource_id "index_id";
       kind = Prop.computed __resource_type __resource_id "kind";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
