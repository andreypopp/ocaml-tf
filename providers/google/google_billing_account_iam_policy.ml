(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_billing_account_iam_policy = {
  billing_account_id : string prop;  (** billing_account_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_billing_account_iam_policy *)

let google_billing_account_iam_policy ?id ~billing_account_id
    ~policy_data () : google_billing_account_iam_policy =
  { billing_account_id; id; policy_data }

type t = {
  billing_account_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let make ?id ~billing_account_id ~policy_data __id =
  let __type = "google_billing_account_iam_policy" in
  let __attrs =
    ({
       billing_account_id =
         Prop.computed __type __id "billing_account_id";
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
      yojson_of_google_billing_account_iam_policy
        (google_billing_account_iam_policy ?id ~billing_account_id
           ~policy_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~billing_account_id ~policy_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~billing_account_id ~policy_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
