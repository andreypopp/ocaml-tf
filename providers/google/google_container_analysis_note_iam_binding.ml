(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_container_analysis_note_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  note : string prop;  (** note *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_container_analysis_note_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_container_analysis_note_iam_binding ?id ?project ~members
    ~note ~role ~condition () :
    google_container_analysis_note_iam_binding =
  { id; members; note; project; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  note : string prop;
  project : string prop;
  role : string prop;
}

let make ?id ?project ~members ~note ~role ~condition __id =
  let __type = "google_container_analysis_note_iam_binding" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       note = Prop.computed __type __id "note";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_analysis_note_iam_binding
        (google_container_analysis_note_iam_binding ?id ?project
           ~members ~note ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~members ~note ~role ~condition
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~members ~note ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
