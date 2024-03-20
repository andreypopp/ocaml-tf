(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_healthcare_fhir_store_iam_policy = {
  fhir_store_id : string prop;
  id : string prop option; [@option]
  policy_data : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_healthcare_fhir_store_iam_policy) -> ()

let yojson_of_google_healthcare_fhir_store_iam_policy =
  (function
   | {
       fhir_store_id = v_fhir_store_id;
       id = v_id;
       policy_data = v_policy_data;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_data in
         ("policy_data", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_fhir_store_id in
         ("fhir_store_id", arg) :: bnds
       in
       `Assoc bnds
    : google_healthcare_fhir_store_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_healthcare_fhir_store_iam_policy

[@@@deriving.end]

let google_healthcare_fhir_store_iam_policy ?id ~fhir_store_id
    ~policy_data () : google_healthcare_fhir_store_iam_policy =
  { fhir_store_id; id; policy_data }

type t = {
  etag : string prop;
  fhir_store_id : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~fhir_store_id ~policy_data __id =
  let __type = "google_healthcare_fhir_store_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       fhir_store_id = Prop.computed __type __id "fhir_store_id";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_fhir_store_iam_policy
        (google_healthcare_fhir_store_iam_policy ?id ~fhir_store_id
           ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~fhir_store_id ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~fhir_store_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
