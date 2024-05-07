(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_healthcare_hl7_v2_store_iam_policy = {
  hl7_v2_store_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_healthcare_hl7_v2_store_iam_policy) -> ()

let yojson_of_google_healthcare_hl7_v2_store_iam_policy =
  (function
   | { hl7_v2_store_id = v_hl7_v2_store_id; id = v_id } ->
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
         let arg =
           yojson_of_prop yojson_of_string v_hl7_v2_store_id
         in
         ("hl7_v2_store_id", arg) :: bnds
       in
       `Assoc bnds
    : google_healthcare_hl7_v2_store_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_healthcare_hl7_v2_store_iam_policy

[@@@deriving.end]

let google_healthcare_hl7_v2_store_iam_policy ?id ~hl7_v2_store_id ()
    : google_healthcare_hl7_v2_store_iam_policy =
  { hl7_v2_store_id; id }

type t = {
  tf_name : string;
  etag : string prop;
  hl7_v2_store_id : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~hl7_v2_store_id __id =
  let __type = "google_healthcare_hl7_v2_store_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~hl7_v2_store_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~hl7_v2_store_id __id =
  let (r : _ Tf_core.resource) = make ?id ~hl7_v2_store_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
