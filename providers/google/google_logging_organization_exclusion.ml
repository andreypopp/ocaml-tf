(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_organization_exclusion = {
  description : string prop option; [@option]
      (** A human-readable description. *)
  disabled : bool prop option; [@option]
      (** Whether this exclusion rule should be disabled or not. This defaults to false. *)
  filter : string prop;
      (** The filter to apply when excluding logs. Only log entries that match the filter are excluded. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the logging exclusion. *)
  org_id : string prop;  (** org_id *)
}
[@@deriving yojson_of]
(** google_logging_organization_exclusion *)

type t = {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
}

let google_logging_organization_exclusion ?description ?disabled ?id
    ~filter ~name ~org_id __resource_id =
  let __resource_type = "google_logging_organization_exclusion" in
  let __resource =
    ({ description; disabled; filter; id; name; org_id }
      : google_logging_organization_exclusion)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_organization_exclusion __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       filter = Prop.computed __resource_type __resource_id "filter";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       org_id = Prop.computed __resource_type __resource_id "org_id";
     }
      : t)
  in
  __resource_attributes
