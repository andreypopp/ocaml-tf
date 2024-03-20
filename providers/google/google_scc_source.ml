(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?timeouts ~display_name ~organization __id
    =
  let __type = "google_scc_source" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_source
        (google_scc_source ?description ?id ?timeouts ~display_name
           ~organization ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~display_name
    ~organization __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~display_name ~organization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
