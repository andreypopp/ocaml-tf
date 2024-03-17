(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_auditmanager_account_registration = {
  delegated_admin_account : string option; [@option]
      (** delegated_admin_account *)
  deregister_on_destroy : bool option; [@option]
      (** deregister_on_destroy *)
  kms_key : string option; [@option]  (** kms_key *)
}
[@@deriving yojson_of]
(** aws_auditmanager_account_registration *)

let aws_auditmanager_account_registration ?delegated_admin_account
    ?deregister_on_destroy ?kms_key __resource_id =
  let __resource_type = "aws_auditmanager_account_registration" in
  let __resource =
    { delegated_admin_account; deregister_on_destroy; kms_key }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_account_registration __resource);
  ()
