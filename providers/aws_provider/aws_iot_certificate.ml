(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_certificate = {
  active : bool prop;  (** active *)
  ca_pem : string prop option; [@option]  (** ca_pem *)
  certificate_pem : string prop option; [@option]
      (** certificate_pem *)
  csr : string prop option; [@option]  (** csr *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_iot_certificate *)

let aws_iot_certificate ?ca_pem ?certificate_pem ?csr ?id ~active
    __resource_id =
  let __resource_type = "aws_iot_certificate" in
  let __resource = { active; ca_pem; certificate_pem; csr; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_certificate __resource);
  ()
