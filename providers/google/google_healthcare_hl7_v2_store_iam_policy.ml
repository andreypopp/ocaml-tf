(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_healthcare_hl7_v2_store_iam_policy = {
  hl7_v2_store_id : string prop;  (** hl7_v2_store_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_healthcare_hl7_v2_store_iam_policy *)

let google_healthcare_hl7_v2_store_iam_policy ?id ~hl7_v2_store_id
    ~policy_data () : google_healthcare_hl7_v2_store_iam_policy =
  { hl7_v2_store_id; id; policy_data }

type t = {
  etag : string prop;
  hl7_v2_store_id : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~hl7_v2_store_id ~policy_data __id =
  let __type = "google_healthcare_hl7_v2_store_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       hl7_v2_store_id = Prop.computed __type __id "hl7_v2_store_id";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_hl7_v2_store_iam_policy
        (google_healthcare_hl7_v2_store_iam_policy ?id
           ~hl7_v2_store_id ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~hl7_v2_store_id ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~hl7_v2_store_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
