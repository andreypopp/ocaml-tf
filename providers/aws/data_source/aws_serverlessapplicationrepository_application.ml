(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_serverlessapplicationrepository_application = {
  application_id : string prop;
  id : string prop option; [@option]
  semantic_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_serverlessapplicationrepository_application) -> ()

let yojson_of_aws_serverlessapplicationrepository_application =
  (function
   | {
       application_id = v_application_id;
       id = v_id;
       semantic_version = v_semantic_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_semantic_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "semantic_version", arg in
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
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_serverlessapplicationrepository_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_serverlessapplicationrepository_application

[@@@deriving.end]

let aws_serverlessapplicationrepository_application ?id
    ?semantic_version ~application_id () :
    aws_serverlessapplicationrepository_application =
  { application_id; id; semantic_version }

type t = {
  application_id : string prop;
  id : string prop;
  name : string prop;
  required_capabilities : string list prop;
  semantic_version : string prop;
  source_code_url : string prop;
  template_url : string prop;
}

let make ?id ?semantic_version ~application_id __id =
  let __type = "aws_serverlessapplicationrepository_application" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       required_capabilities =
         Prop.computed __type __id "required_capabilities";
       semantic_version =
         Prop.computed __type __id "semantic_version";
       source_code_url = Prop.computed __type __id "source_code_url";
       template_url = Prop.computed __type __id "template_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_serverlessapplicationrepository_application
        (aws_serverlessapplicationrepository_application ?id
           ?semantic_version ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?semantic_version ~application_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?semantic_version ~application_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
