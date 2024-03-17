(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_organizations_delegated_administrator = {
  account_id : string;  (** account_id *)
  service_principal : string;  (** service_principal *)
}
[@@deriving yojson_of]
(** aws_organizations_delegated_administrator *)

let aws_organizations_delegated_administrator ~account_id
    ~service_principal __resource_id =
  let __resource_type =
    "aws_organizations_delegated_administrator"
  in
  let __resource = { account_id; service_principal } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_delegated_administrator __resource);
  ()
