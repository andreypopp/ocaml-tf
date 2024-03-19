(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~billing_account_id ~policy_data
    __resource_id =
  let __resource_type = "google_billing_account_iam_policy" in
  let __resource =
    google_billing_account_iam_policy ?id ~billing_account_id
      ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_billing_account_iam_policy __resource);
  let __resource_attributes =
    ({
       billing_account_id =
         Prop.computed __resource_type __resource_id
           "billing_account_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
