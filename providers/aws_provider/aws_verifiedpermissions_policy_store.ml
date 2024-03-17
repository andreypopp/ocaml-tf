(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedpermissions_policy_store__validation_settings = {
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_policy_store__validation_settings *)

type aws_verifiedpermissions_policy_store = {
  description : string prop option; [@option]  (** description *)
  validation_settings :
    aws_verifiedpermissions_policy_store__validation_settings list;
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_policy_store *)

let aws_verifiedpermissions_policy_store ?description
    ~validation_settings __resource_id =
  let __resource_type = "aws_verifiedpermissions_policy_store" in
  let __resource = { description; validation_settings } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedpermissions_policy_store __resource);
  ()
