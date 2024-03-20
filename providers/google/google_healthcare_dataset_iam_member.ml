(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_healthcare_dataset_iam_member = {
  dataset_id : string prop;  (** dataset_id *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_healthcare_dataset_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_healthcare_dataset_iam_member ?id ~dataset_id ~member
    ~role ~condition () : google_healthcare_dataset_iam_member =
  { dataset_id; id; member; role; condition }

type t = {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

let make ?id ~dataset_id ~member ~role ~condition __id =
  let __type = "google_healthcare_dataset_iam_member" in
  let __attrs =
    ({
       dataset_id = Prop.computed __type __id "dataset_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_dataset_iam_member
        (google_healthcare_dataset_iam_member ?id ~dataset_id ~member
           ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~dataset_id ~member ~role ~condition __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~dataset_id ~member ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
