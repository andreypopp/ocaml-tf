(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_service_specific_credential = {
  id : string prop option; [@option]
  service_name : string prop;
  status : string prop option; [@option]
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_service_specific_credential) -> ()

let yojson_of_aws_iam_service_specific_credential =
  (function
   | {
       id = v_id;
       service_name = v_service_name;
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
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_service_specific_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_service_specific_credential

[@@@deriving.end]

let aws_iam_service_specific_credential ?id ?status ~service_name
    ~user_name () : aws_iam_service_specific_credential =
  { id; service_name; status; user_name }

type t = {
  id : string prop;
  service_name : string prop;
  service_password : string prop;
  service_specific_credential_id : string prop;
  service_user_name : string prop;
  status : string prop;
  user_name : string prop;
}

let make ?id ?status ~service_name ~user_name __id =
  let __type = "aws_iam_service_specific_credential" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       service_name = Prop.computed __type __id "service_name";
       service_password =
         Prop.computed __type __id "service_password";
       service_specific_credential_id =
         Prop.computed __type __id "service_specific_credential_id";
       service_user_name =
         Prop.computed __type __id "service_user_name";
       status = Prop.computed __type __id "status";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_service_specific_credential
        (aws_iam_service_specific_credential ?id ?status
           ~service_name ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~service_name ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~service_name ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
