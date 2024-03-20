(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_certificate = {
  certificate_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_certificate) -> ()

let yojson_of_aws_dms_certificate =
  (function
   | { certificate_id = v_certificate_id; id = v_id; tags = v_tags }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_certificate_id
         in
         ("certificate_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_dms_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_certificate

[@@@deriving.end]

let aws_dms_certificate ?id ?tags ~certificate_id () :
    aws_dms_certificate =
  { certificate_id; id; tags }

type t = {
  certificate_arn : string prop;
  certificate_creation_date : string prop;
  certificate_id : string prop;
  certificate_owner : string prop;
  certificate_pem : string prop;
  certificate_wallet : string prop;
  id : string prop;
  key_length : float prop;
  signing_algorithm : string prop;
  tags : (string * string) list prop;
  valid_from_date : string prop;
  valid_to_date : string prop;
}

let make ?id ?tags ~certificate_id __id =
  let __type = "aws_dms_certificate" in
  let __attrs =
    ({
       certificate_arn = Prop.computed __type __id "certificate_arn";
       certificate_creation_date =
         Prop.computed __type __id "certificate_creation_date";
       certificate_id = Prop.computed __type __id "certificate_id";
       certificate_owner =
         Prop.computed __type __id "certificate_owner";
       certificate_pem = Prop.computed __type __id "certificate_pem";
       certificate_wallet =
         Prop.computed __type __id "certificate_wallet";
       id = Prop.computed __type __id "id";
       key_length = Prop.computed __type __id "key_length";
       signing_algorithm =
         Prop.computed __type __id "signing_algorithm";
       tags = Prop.computed __type __id "tags";
       valid_from_date = Prop.computed __type __id "valid_from_date";
       valid_to_date = Prop.computed __type __id "valid_to_date";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_certificate
        (aws_dms_certificate ?id ?tags ~certificate_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~certificate_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~certificate_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
