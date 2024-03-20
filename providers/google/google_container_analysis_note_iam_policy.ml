(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_container_analysis_note_iam_policy = {
  id : string prop option; [@option]  (** id *)
  note : string prop;  (** note *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_container_analysis_note_iam_policy *)

let google_container_analysis_note_iam_policy ?id ?project ~note
    ~policy_data () : google_container_analysis_note_iam_policy =
  { id; note; policy_data; project }

type t = {
  etag : string prop;
  id : string prop;
  note : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?project ~note ~policy_data __id =
  let __type = "google_container_analysis_note_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       note = Prop.computed __type __id "note";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_analysis_note_iam_policy
        (google_container_analysis_note_iam_policy ?id ?project ~note
           ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~note ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~note ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
