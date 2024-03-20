(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_signing_certificate = {
  certificate_body : string prop;
  id : string prop option; [@option]
  status : string prop option; [@option]
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_signing_certificate) -> ()

let yojson_of_aws_iam_signing_certificate =
  (function
   | {
       certificate_body = v_certificate_body;
       id = v_id;
       status = v_status;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
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
           yojson_of_prop yojson_of_string v_certificate_body
         in
         ("certificate_body", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_signing_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_signing_certificate

[@@@deriving.end]

let aws_iam_signing_certificate ?id ?status ~certificate_body
    ~user_name () : aws_iam_signing_certificate =
  { certificate_body; id; status; user_name }

type t = {
  certificate_body : string prop;
  certificate_id : string prop;
  id : string prop;
  status : string prop;
  user_name : string prop;
}

let make ?id ?status ~certificate_body ~user_name __id =
  let __type = "aws_iam_signing_certificate" in
  let __attrs =
    ({
       certificate_body =
         Prop.computed __type __id "certificate_body";
       certificate_id = Prop.computed __type __id "certificate_id";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_signing_certificate
        (aws_iam_signing_certificate ?id ?status ~certificate_body
           ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~certificate_body ~user_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~certificate_body ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
