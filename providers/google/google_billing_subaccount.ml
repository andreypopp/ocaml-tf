(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_billing_subaccount = {
  deletion_policy : string prop option; [@option]
      (** deletion_policy *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  master_billing_account : string prop;  (** master_billing_account *)
}
[@@deriving yojson_of]
(** google_billing_subaccount *)

type t = {
  billing_account_id : string prop;
  deletion_policy : string prop;
  display_name : string prop;
  id : string prop;
  master_billing_account : string prop;
  name : string prop;
  open_ : bool prop;
}

let google_billing_subaccount ?deletion_policy ?id ~display_name
    ~master_billing_account __resource_id =
  let __resource_type = "google_billing_subaccount" in
  let __resource =
    ({ deletion_policy; display_name; id; master_billing_account }
      : google_billing_subaccount)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_billing_subaccount __resource);
  let __resource_attributes =
    ({
       billing_account_id =
         Prop.computed __resource_type __resource_id
           "billing_account_id";
       deletion_policy =
         Prop.computed __resource_type __resource_id
           "deletion_policy";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       master_billing_account =
         Prop.computed __resource_type __resource_id
           "master_billing_account";
       name = Prop.computed __resource_type __resource_id "name";
       open_ = Prop.computed __resource_type __resource_id "open";
     }
      : t)
  in
  __resource_attributes
