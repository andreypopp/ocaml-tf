(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_cloudbuildv2_repository = {
  annotations : (string * string prop) list option; [@option]
      (** Allows clients to store small amounts of arbitrary data.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The location for the resource *)
  name : string prop;  (** Name of the repository. *)
  parent_connection : string prop;
      (** The connection for the resource *)
  project : string prop option; [@option]  (** project *)
  remote_uri : string prop;  (** Required. Git Clone HTTPS URI. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_cloudbuildv2_repository *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_cloudbuildv2_repository ?annotations ?id ?location
    ?project ?timeouts ~name ~parent_connection ~remote_uri () :
    google_cloudbuildv2_repository =
  {
    annotations;
    id;
    location;
    name;
    parent_connection;
    project;
    remote_uri;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent_connection : string prop;
  project : string prop;
  remote_uri : string prop;
  update_time : string prop;
}

let register ?tf_module ?annotations ?id ?location ?project ?timeouts
    ~name ~parent_connection ~remote_uri __resource_id =
  let __resource_type = "google_cloudbuildv2_repository" in
  let __resource =
    google_cloudbuildv2_repository ?annotations ?id ?location
      ?project ?timeouts ~name ~parent_connection ~remote_uri ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuildv2_repository __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       parent_connection =
         Prop.computed __resource_type __resource_id
           "parent_connection";
       project =
         Prop.computed __resource_type __resource_id "project";
       remote_uri =
         Prop.computed __resource_type __resource_id "remote_uri";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
