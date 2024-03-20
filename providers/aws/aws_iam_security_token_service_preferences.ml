(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_security_token_service_preferences = {
  global_endpoint_token_version : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_security_token_service_preferences) -> ()

let yojson_of_aws_iam_security_token_service_preferences =
  (function
   | {
       global_endpoint_token_version =
         v_global_endpoint_token_version;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_global_endpoint_token_version
         in
         ("global_endpoint_token_version", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_security_token_service_preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_security_token_service_preferences

[@@@deriving.end]

let aws_iam_security_token_service_preferences ?id
    ~global_endpoint_token_version () :
    aws_iam_security_token_service_preferences =
  { global_endpoint_token_version; id }

type t = {
  global_endpoint_token_version : string prop;
  id : string prop;
}

let make ?id ~global_endpoint_token_version __id =
  let __type = "aws_iam_security_token_service_preferences" in
  let __attrs =
    ({
       global_endpoint_token_version =
         Prop.computed __type __id "global_endpoint_token_version";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_security_token_service_preferences
        (aws_iam_security_token_service_preferences ?id
           ~global_endpoint_token_version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~global_endpoint_token_version __id =
  let (r : _ Tf_core.resource) =
    make ?id ~global_endpoint_token_version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
