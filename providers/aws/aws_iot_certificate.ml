(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_certificate = {
  active : bool prop;
  ca_pem : string prop option; [@option]
  certificate_pem : string prop option; [@option]
  csr : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_certificate) -> ()

let yojson_of_aws_iot_certificate =
  (function
   | {
       active = v_active;
       ca_pem = v_ca_pem;
       certificate_pem = v_certificate_pem;
       csr = v_csr;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_csr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "csr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_pem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_pem", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_pem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_pem", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_active in
         ("active", arg) :: bnds
       in
       `Assoc bnds
    : aws_iot_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_certificate

[@@@deriving.end]

let aws_iot_certificate ?ca_pem ?certificate_pem ?csr ?id ~active ()
    : aws_iot_certificate =
  { active; ca_pem; certificate_pem; csr; id }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
