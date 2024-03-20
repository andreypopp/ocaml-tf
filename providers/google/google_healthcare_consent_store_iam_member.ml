(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_healthcare_consent_store_iam_member = {
  consent_store_id : string prop;  (** consent_store_id *)
  dataset : string prop;  (** dataset *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_healthcare_consent_store_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_healthcare_consent_store_iam_member ?id ~consent_store_id
    ~dataset ~member ~role ~condition () :
    google_healthcare_consent_store_iam_member =
  { consent_store_id; dataset; id; member; role; condition }

type t = {
  consent_store_id : string prop;
  dataset : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

let make ?id ~consent_store_id ~dataset ~member ~role ~condition __id
    =
  let __type = "google_healthcare_consent_store_iam_member" in
  let __attrs =
    ({
       consent_store_id =
         Prop.computed __type __id "consent_store_id";
       dataset = Prop.computed __type __id "dataset";
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
      yojson_of_google_healthcare_consent_store_iam_member
        (google_healthcare_consent_store_iam_member ?id
           ~consent_store_id ~dataset ~member ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~consent_store_id ~dataset ~member ~role
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~consent_store_id ~dataset ~member ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
