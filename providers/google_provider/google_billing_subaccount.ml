(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_billing_subaccount = {
  deletion_policy : string option; [@option]  (** deletion_policy *)
  display_name : string;  (** display_name *)
  master_billing_account : string;  (** master_billing_account *)
}
[@@deriving yojson_of]
(** google_billing_subaccount *)

let google_billing_subaccount ?deletion_policy ~display_name
    ~master_billing_account __resource_id =
  let __resource_type = "google_billing_subaccount" in
  let __resource =
    { deletion_policy; display_name; master_billing_account }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_billing_subaccount __resource);
  ()
