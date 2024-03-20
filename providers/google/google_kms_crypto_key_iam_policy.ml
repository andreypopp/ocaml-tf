(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_kms_crypto_key_iam_policy = {
  crypto_key_id : string prop;  (** crypto_key_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_kms_crypto_key_iam_policy *)

let google_kms_crypto_key_iam_policy ?id ~crypto_key_id ~policy_data
    () : google_kms_crypto_key_iam_policy =
  { crypto_key_id; id; policy_data }

type t = {
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~crypto_key_id ~policy_data __id =
  let __type = "google_kms_crypto_key_iam_policy" in
  let __attrs =
    ({
       crypto_key_id = Prop.computed __type __id "crypto_key_id";
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
      yojson_of_google_kms_crypto_key_iam_policy
        (google_kms_crypto_key_iam_policy ?id ~crypto_key_id
           ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~crypto_key_id ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~crypto_key_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
