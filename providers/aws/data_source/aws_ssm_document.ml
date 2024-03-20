(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_document = {
  document_format : string prop option; [@option]
  document_version : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_document) -> ()

let yojson_of_aws_ssm_document =
  (function
   | {
       document_format = v_document_format;
       document_version = v_document_version;
       id = v_id;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_document_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_document_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_document -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_document

[@@@deriving.end]

let aws_ssm_document ?document_format ?document_version ?id ~name ()
    : aws_ssm_document =
  { document_format; document_version; id; name }

type t = {
  arn : string prop;
  content : string prop;
  document_format : string prop;
  document_type : string prop;
  document_version : string prop;
  id : string prop;
  name : string prop;
}

let make ?document_format ?document_version ?id ~name __id =
  let __type = "aws_ssm_document" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       document_format = Prop.computed __type __id "document_format";
       document_type = Prop.computed __type __id "document_type";
       document_version =
         Prop.computed __type __id "document_version";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_document
        (aws_ssm_document ?document_format ?document_version ?id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?document_format ?document_version ?id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?document_format ?document_version ?id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
