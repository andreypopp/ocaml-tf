(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_servicecatalogappregistry_application = {
  description : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalogappregistry_application) -> ()

let yojson_of_aws_servicecatalogappregistry_application =
  (function
   | { description = v_description; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicecatalogappregistry_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalogappregistry_application

[@@@deriving.end]

let aws_servicecatalogappregistry_application ?description ~name () :
    aws_servicecatalogappregistry_application =
  { description; name }

type t = {
  tf_name : string;
  application_tag : (string * string) list prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ~name __id =
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
        (aws_servicecatalogappregistry_application ?description ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~name __id =
  let (r : _ Tf_core.resource) = make ?description ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
