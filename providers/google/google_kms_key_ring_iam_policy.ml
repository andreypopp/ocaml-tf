(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_kms_key_ring_iam_policy = {
  id : string prop option; [@option]  (** id *)
  key_ring_id : string prop;  (** key_ring_id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_kms_key_ring_iam_policy *)

let google_kms_key_ring_iam_policy ?id ~key_ring_id ~policy_data () :
    google_kms_key_ring_iam_policy =
  { id; key_ring_id; policy_data }

type t = {
  etag : string prop;
  id : string prop;
  key_ring_id : string prop;
  policy_data : string prop;
}

let make ?id ~key_ring_id ~policy_data __id =
  let __type = "google_kms_key_ring_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key_ring_id = Prop.computed __type __id "key_ring_id";
       policy_data = Prop.computed __type __id "policy_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_key_ring_iam_policy
        (google_kms_key_ring_iam_policy ?id ~key_ring_id ~policy_data
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key_ring_id ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~key_ring_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
