(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_certificate = {
  active : bool;  (** active *)
  ca_pem : string option; [@option]  (** ca_pem *)
  csr : string option; [@option]  (** csr *)
}
[@@deriving yojson_of]
(** aws_iot_certificate *)

let aws_iot_certificate ?ca_pem ?csr ~active __resource_id =
  let __resource_type = "aws_iot_certificate" in
  let __resource = { active; ca_pem; csr } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_certificate __resource);
  ()
