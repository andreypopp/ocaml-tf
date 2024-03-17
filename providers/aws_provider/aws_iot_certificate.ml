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

type t = {
  active : bool prop;
  arn : string prop;
  ca_certificate_id : string prop;
  ca_pem : string prop;
  certificate_pem : string prop;
  csr : string prop;
  id : string prop;
  private_key : string prop;
  public_key : string prop;
}

let aws_iot_certificate ?ca_pem ?certificate_pem ?csr ?id ~active
    __resource_id =
  let __resource_type = "aws_iot_certificate" in
  let __resource =
    ({ active; ca_pem; certificate_pem; csr; id }
      : aws_iot_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_certificate __resource);
  let __resource_attributes =
    ({
       active = Prop.computed __resource_type __resource_id "active";
       arn = Prop.computed __resource_type __resource_id "arn";
       ca_certificate_id =
         Prop.computed __resource_type __resource_id
           "ca_certificate_id";
       ca_pem = Prop.computed __resource_type __resource_id "ca_pem";
       certificate_pem =
         Prop.computed __resource_type __resource_id
           "certificate_pem";
       csr = Prop.computed __resource_type __resource_id "csr";
       id = Prop.computed __resource_type __resource_id "id";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
     }
      : t)
  in
  __resource_attributes
