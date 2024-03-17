(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_scc_source__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_scc_source__timeouts *)

type google_scc_source = {
  description : string prop option; [@option]
      (** The description of the source (max of 1024 characters). *)
  display_name : string prop;
      (** The source’s display name. A source’s display name must be unique
amongst its siblings, for example, two sources with the same parent
can't share the same display name. The display name must start and end
with a letter or digit, may contain letters, digits, spaces, hyphens,
and underscores, and can be no longer than 32 characters. *)
  id : string prop option; [@option]  (** id *)
  organization : string prop;
      (** The organization whose Cloud Security Command Center the Source
lives in. *)
  timeouts : google_scc_source__timeouts option;
}
[@@deriving yojson_of]
(** google_scc_source *)

let google_scc_source ?description ?id ?timeouts ~display_name
    ~organization __resource_id =
  let __resource_type = "google_scc_source" in
  let __resource =
    { description; display_name; id; organization; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_source __resource);
  ()
