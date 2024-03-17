(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_partner = {
  account_id : string;  (** account_id *)
  cluster_identifier : string;  (** cluster_identifier *)
  database_name : string;  (** database_name *)
  partner_name : string;  (** partner_name *)
}
[@@deriving yojson_of]
(** aws_redshift_partner *)

let aws_redshift_partner ~account_id ~cluster_identifier
    ~database_name ~partner_name __resource_id =
  let __resource_type = "aws_redshift_partner" in
  let __resource =
    { account_id; cluster_identifier; database_name; partner_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_partner __resource);
  ()
