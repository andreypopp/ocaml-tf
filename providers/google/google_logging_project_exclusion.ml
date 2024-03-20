(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_logging_project_exclusion = {
  description : string prop option; [@option]
      (** A human-readable description. *)
  disabled : bool prop option; [@option]
      (** Whether this exclusion rule should be disabled or not. This defaults to false. *)
  filter : string prop;
      (** The filter to apply when excluding logs. Only log entries that match the filter are excluded. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the logging exclusion. *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_logging_project_exclusion *)

let google_logging_project_exclusion ?description ?disabled ?id
    ?project ~filter ~name () : google_logging_project_exclusion =
  { description; disabled; filter; id; name; project }

type t = {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?description ?disabled ?id ?project ~filter ~name __id =
  let __type = "google_logging_project_exclusion" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_project_exclusion
        (google_logging_project_exclusion ?description ?disabled ?id
           ?project ~filter ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?id ?project ~filter
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?id ?project ~filter ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
