(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudbuildv2_repository__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_cloudbuildv2_repository__timeouts *)

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
  timeouts : google_cloudbuildv2_repository__timeouts option;
}
[@@deriving yojson_of]
(** google_cloudbuildv2_repository *)

let google_cloudbuildv2_repository ?annotations ?id ?location
    ?project ?timeouts ~name ~parent_connection ~remote_uri
    __resource_id =
  let __resource_type = "google_cloudbuildv2_repository" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuildv2_repository __resource);
  ()
