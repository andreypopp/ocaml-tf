(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_scc_source *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_scc_source ?description ?id ?timeouts ~display_name
    ~organization () : google_scc_source =
  { description; display_name; id; organization; timeouts }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  organization : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~display_name
    ~organization __resource_id =
  let __resource_type = "google_scc_source" in
  let __resource =
    google_scc_source ?description ?id ?timeouts ~display_name
      ~organization ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_source __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       organization =
         Prop.computed __resource_type __resource_id "organization";
     }
      : t)
  in
  __resource_attributes
