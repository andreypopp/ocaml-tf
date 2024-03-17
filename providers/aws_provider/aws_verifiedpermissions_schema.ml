(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_verifiedpermissions_schema__definition = {
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_schema__definition *)

type aws_verifiedpermissions_schema = {
  policy_store_id : string;  (** policy_store_id *)
  definition : aws_verifiedpermissions_schema__definition;
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_schema *)

let aws_verifiedpermissions_schema ~policy_store_id ~definition
    __resource_id =
  let __resource_type = "aws_verifiedpermissions_schema" in
  let __resource = { policy_store_id; definition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedpermissions_schema __resource);
  ()
