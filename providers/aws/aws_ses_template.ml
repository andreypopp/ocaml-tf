(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_template = {
  html : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  subject : string prop option; [@option]
  text : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_template) -> ()

let yojson_of_aws_ses_template =
  (function
   | {
       html = v_html;
       id = v_id;
       name = v_name;
       subject = v_subject;
       text = v_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject", arg in
             bnd :: bnds
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
         match v_html with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "html", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ses_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_template

[@@@deriving.end]

let aws_ses_template ?html ?id ?subject ?text ~name () :
    aws_ses_template =
  { html; id; name; subject; text }

type t = {
  tf_name : string;
  arn : string prop;
  html : string prop;
  id : string prop;
  name : string prop;
  subject : string prop;
  text : string prop;
}

let make ?html ?id ?subject ?text ~name __id =
  let __type = "aws_ses_template" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       html = Prop.computed __type __id "html";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subject = Prop.computed __type __id "subject";
       text = Prop.computed __type __id "text";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_template
        (aws_ses_template ?html ?id ?subject ?text ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?html ?id ?subject ?text ~name __id =
  let (r : _ Tf_core.resource) =
    make ?html ?id ?subject ?text ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
