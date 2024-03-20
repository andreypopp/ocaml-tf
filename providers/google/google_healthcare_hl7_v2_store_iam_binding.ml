(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_healthcare_hl7_v2_store_iam_binding = {
  hl7_v2_store_id : string prop;  (** hl7_v2_store_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_healthcare_hl7_v2_store_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_healthcare_hl7_v2_store_iam_binding ?id ~hl7_v2_store_id
    ~members ~role ~condition () :
    google_healthcare_hl7_v2_store_iam_binding =
  { hl7_v2_store_id; id; members; role; condition }

type t = {
  etag : string prop;
  hl7_v2_store_id : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

let make ?id ~hl7_v2_store_id ~members ~role ~condition __id =
  let __type = "google_healthcare_hl7_v2_store_iam_binding" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       hl7_v2_store_id = Prop.computed __type __id "hl7_v2_store_id";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_hl7_v2_store_iam_binding
        (google_healthcare_hl7_v2_store_iam_binding ?id
           ~hl7_v2_store_id ~members ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~hl7_v2_store_id ~members ~role
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~hl7_v2_store_id ~members ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
