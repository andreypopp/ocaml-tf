(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_bucket_iam_policy = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_policy *)

let google_storage_bucket_iam_policy ?id ~bucket ~policy_data () :
    google_storage_bucket_iam_policy =
  { bucket; id; policy_data }

type t = {
  bucket : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~bucket ~policy_data __id =
  let __type = "google_storage_bucket_iam_policy" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
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
      yojson_of_google_storage_bucket_iam_policy
        (google_storage_bucket_iam_policy ?id ~bucket ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bucket ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
