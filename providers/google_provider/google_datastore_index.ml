(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_datastore_index__properties = {
  direction : string;
      (** The direction the index should optimize for sorting. Possible values: [ASCENDING, DESCENDING] *)
  name : string;  (** The property name to index. *)
}
[@@deriving yojson_of]
(** An ordered list of properties to index on. *)

type google_datastore_index__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_datastore_index__timeouts *)

type google_datastore_index = {
  ancestor : string option; [@option]
      (** Policy for including ancestors in the index. Default value: NONE Possible values: [NONE, ALL_ANCESTORS] *)
  id : string option; [@option]  (** id *)
  kind : string;  (** The entity kind which the index applies to. *)
  project : string option; [@option]  (** project *)
  properties : google_datastore_index__properties list;
  timeouts : google_datastore_index__timeouts option;
}
[@@deriving yojson_of]
(** google_datastore_index *)

let google_datastore_index ?ancestor ?id ?project ?timeouts ~kind
    ~properties __resource_id =
  let __resource_type = "google_datastore_index" in
  let __resource =
    { ancestor; id; kind; project; properties; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_datastore_index __resource);
  ()
