(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_iot_certificate ?ca_pem ?certificate_pem ?csr ?id ~active ()
    : aws_iot_certificate =
  { active; ca_pem; certificate_pem; csr; id }

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

let make ?ca_pem ?certificate_pem ?csr ?id ~active __id =
  let __type = "aws_iot_certificate" in
  let __attrs =
    ({
       active = Prop.computed __type __id "active";
       arn = Prop.computed __type __id "arn";
       ca_certificate_id =
         Prop.computed __type __id "ca_certificate_id";
       ca_pem = Prop.computed __type __id "ca_pem";
       certificate_pem = Prop.computed __type __id "certificate_pem";
       csr = Prop.computed __type __id "csr";
       id = Prop.computed __type __id "id";
       private_key = Prop.computed __type __id "private_key";
       public_key = Prop.computed __type __id "public_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_certificate
        (aws_iot_certificate ?ca_pem ?certificate_pem ?csr ?id
           ~active ());
    attrs = __attrs;
  }

let register ?tf_module ?ca_pem ?certificate_pem ?csr ?id ~active
    __id =
  let (r : _ Tf_core.resource) =
    make ?ca_pem ?certificate_pem ?csr ?id ~active __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
