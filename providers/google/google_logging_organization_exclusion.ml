(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let google_logging_organization_exclusion ?description ?disabled ?id
    ~filter ~name ~org_id () : google_logging_organization_exclusion
    =
  { description; disabled; filter; id; name; org_id }

type t = {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
}

let make ?description ?disabled ?id ~filter ~name ~org_id __id =
  let __type = "google_logging_organization_exclusion" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_organization_exclusion
        (google_logging_organization_exclusion ?description ?disabled
           ?id ~filter ~name ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?id ~filter ~name
    ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?id ~filter ~name ~org_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
