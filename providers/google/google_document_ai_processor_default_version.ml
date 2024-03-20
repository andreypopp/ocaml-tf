(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_document_ai_processor_default_version = {
  id : string prop option; [@option]  (** id *)
  processor : string prop;
      (** The processor to set the version on. *)
  version : string prop;
      (** The version to set. Using 'stable' or 'rc' will cause the API to return the latest version in that release channel.
Apply 'lifecycle.ignore_changes' to the 'version' field to suppress this diff. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_document_ai_processor_default_version *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_document_ai_processor_default_version ?id ?timeouts
    ~processor ~version () :
    google_document_ai_processor_default_version =
  { id; processor; version; timeouts }

type t = {
  id : string prop;
  processor : string prop;
  version : string prop;
}

let make ?id ?timeouts ~processor ~version __id =
  let __type = "google_document_ai_processor_default_version" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       processor = Prop.computed __type __id "processor";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_document_ai_processor_default_version
        (google_document_ai_processor_default_version ?id ?timeouts
           ~processor ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~processor ~version __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~processor ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
