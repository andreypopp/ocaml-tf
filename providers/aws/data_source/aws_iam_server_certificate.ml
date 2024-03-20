(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_server_certificate = {
  id : string prop option; [@option]
  latest : bool prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  path_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_server_certificate) -> ()

let yojson_of_aws_iam_server_certificate =
  (function
   | {
       id = v_id;
       latest = v_latest;
       name = v_name;
       name_prefix = v_name_prefix;
       path_prefix = v_path_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_latest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "latest", arg in
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
       `Assoc bnds
    : aws_iam_server_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_server_certificate

[@@@deriving.end]

let aws_iam_server_certificate ?id ?latest ?name ?name_prefix
    ?path_prefix () : aws_iam_server_certificate =
  { id; latest; name; name_prefix; path_prefix }

type t = {
  arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  expiration_date : string prop;
  id : string prop;
  latest : bool prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  path_prefix : string prop;
  upload_date : string prop;
}

let make ?id ?latest ?name ?name_prefix ?path_prefix __id =
  let __type = "aws_iam_server_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       certificate_body =
         Prop.computed __type __id "certificate_body";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       latest = Prop.computed __type __id "latest";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       path = Prop.computed __type __id "path";
       path_prefix = Prop.computed __type __id "path_prefix";
       upload_date = Prop.computed __type __id "upload_date";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_server_certificate
        (aws_iam_server_certificate ?id ?latest ?name ?name_prefix
           ?path_prefix ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?latest ?name ?name_prefix ?path_prefix
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?latest ?name ?name_prefix ?path_prefix __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
