(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_healthcare_dataset = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the Dataset. *)
  name : string prop;  (** The resource name for the Dataset. *)
  project : string prop option; [@option]  (** project *)
  time_zone : string prop option; [@option]
      (** The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
America/New_York or empty, which defaults to UTC. This is used for parsing times in resources
(e.g., HL7 messages) where no explicit timezone is specified. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_dataset *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_healthcare_dataset ?id ?project ?time_zone ?timeouts
    ~location ~name () : google_healthcare_dataset =
  { id; location; name; project; time_zone; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  time_zone : string prop;
}

let make ?id ?project ?time_zone ?timeouts ~location ~name __id =
  let __type = "google_healthcare_dataset" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_dataset
        (google_healthcare_dataset ?id ?project ?time_zone ?timeouts
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?time_zone ?timeouts ~location
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?time_zone ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
