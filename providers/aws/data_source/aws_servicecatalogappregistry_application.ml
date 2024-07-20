(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_servicecatalogappregistry_application = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalogappregistry_application) -> ()

let yojson_of_aws_servicecatalogappregistry_application =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_servicecatalogappregistry_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalogappregistry_application

[@@@deriving.end]

let aws_servicecatalogappregistry_application ~id () :
    aws_servicecatalogappregistry_application =
  { id }

type t = {
  tf_name : string;
  application_tag : (string * string) list prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ~id __id =
  let __type = "aws_servicecatalogappregistry_application" in
  let __attrs =
    ({
       tf_name = __id;
       application_tag = Prop.computed __type __id "application_tag";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalogappregistry_application
        (aws_servicecatalogappregistry_application ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
