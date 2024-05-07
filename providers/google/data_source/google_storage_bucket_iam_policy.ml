(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_bucket_iam_policy = {
  bucket : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_bucket_iam_policy) -> ()

let yojson_of_google_storage_bucket_iam_policy =
  (function
   | { bucket = v_bucket; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_bucket_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_bucket_iam_policy

[@@@deriving.end]

let google_storage_bucket_iam_policy ?id ~bucket () :
    google_storage_bucket_iam_policy =
  { bucket; id }

type t = {
  tf_name : string;
  bucket : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~bucket __id =
  let __type = "google_storage_bucket_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
        (google_storage_bucket_iam_policy ?id ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket __id =
  let (r : _ Tf_core.resource) = make ?id ~bucket __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
