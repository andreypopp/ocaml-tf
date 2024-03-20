(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_healthcare_consent_store_iam_policy = {
  consent_store_id : string prop;  (** consent_store_id *)
  dataset : string prop;  (** dataset *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_healthcare_consent_store_iam_policy *)

let google_healthcare_consent_store_iam_policy ?id ~consent_store_id
    ~dataset ~policy_data () :
    google_healthcare_consent_store_iam_policy =
  { consent_store_id; dataset; id; policy_data }

type t = {
  consent_store_id : string prop;
  dataset : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~consent_store_id ~dataset ~policy_data __id =
  let __type = "google_healthcare_consent_store_iam_policy" in
  let __attrs =
    ({
       consent_store_id =
         Prop.computed __type __id "consent_store_id";
       dataset = Prop.computed __type __id "dataset";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_consent_store_iam_policy
        (google_healthcare_consent_store_iam_policy ?id
           ~consent_store_id ~dataset ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~consent_store_id ~dataset ~policy_data
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~consent_store_id ~dataset ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
