(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_saml_provider = {
  arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_saml_provider) -> ()

let yojson_of_aws_iam_saml_provider =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags } ->
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
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_saml_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_saml_provider

[@@@deriving.end]

let aws_iam_saml_provider ?id ?tags ~arn () : aws_iam_saml_provider =
  { arn; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  create_date : string prop;
  id : string prop;
  name : string prop;
  saml_metadata_document : string prop;
  tags : (string * string) list prop;
  valid_until : string prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_iam_saml_provider" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       create_date = Prop.computed __type __id "create_date";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       saml_metadata_document =
         Prop.computed __type __id "saml_metadata_document";
       tags = Prop.computed __type __id "tags";
       valid_until = Prop.computed __type __id "valid_until";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_saml_provider
        (aws_iam_saml_provider ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
