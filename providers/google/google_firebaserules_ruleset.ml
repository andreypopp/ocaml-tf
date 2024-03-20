(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source__files = {
  content : string prop;  (** Textual Content. *)
  fingerprint : string prop option; [@option]
      (** Fingerprint (e.g. github sha) associated with the `File`. *)
  name : string prop;  (** File name. *)
}
[@@deriving yojson_of]
(** `File` set constituting the `Source` bundle. *)

type source = {
  language : string prop option; [@option]
      (** `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS *)
  files : source__files list;
}
[@@deriving yojson_of]
(** `Source` for the `Ruleset`. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type metadata = { services : string prop list  (** services *) }
[@@deriving yojson_of]

type google_firebaserules_ruleset = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]
      (** The project for the resource *)
  source : source list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firebaserules_ruleset *)

let source__files ?fingerprint ~content ~name () : source__files =
  { content; fingerprint; name }

let source ?language ~files () : source = { language; files }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_firebaserules_ruleset ?id ?project ?timeouts ~source () :
    google_firebaserules_ruleset =
  { id; project; source; timeouts }

type t = {
  create_time : string prop;
  id : string prop;
  metadata : metadata list prop;
  name : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~source __id =
  let __type = "google_firebaserules_ruleset" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firebaserules_ruleset
        (google_firebaserules_ruleset ?id ?project ?timeouts ~source
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~source __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
