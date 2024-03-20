(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_image_iam_policy = {
  id : string prop option; [@option]  (** id *)
  image : string prop;  (** image *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_compute_image_iam_policy *)

let google_compute_image_iam_policy ?id ?project ~image ~policy_data
    () : google_compute_image_iam_policy =
  { id; image; policy_data; project }

type t = {
  etag : string prop;
  id : string prop;
  image : string prop;
  policy_data : string prop;
  project : string prop;
}

let make ?id ?project ~image ~policy_data __id =
  let __type = "google_compute_image_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_image_iam_policy
        (google_compute_image_iam_policy ?id ?project ~image
           ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~image ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~image ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
