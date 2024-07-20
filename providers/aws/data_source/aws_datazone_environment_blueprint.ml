(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datazone_environment_blueprint = {
  domain_id : string prop;
  managed : bool prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datazone_environment_blueprint) -> ()

let yojson_of_aws_datazone_environment_blueprint =
  (function
   | { domain_id = v_domain_id; managed = v_managed; name = v_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_managed in
         ("managed", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_id in
         ("domain_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_datazone_environment_blueprint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datazone_environment_blueprint

[@@@deriving.end]

let aws_datazone_environment_blueprint ~domain_id ~managed ~name () :
    aws_datazone_environment_blueprint =
  { domain_id; managed; name }

type t = {
  tf_name : string;
  blueprint_provider : string prop;
  description : string prop;
  domain_id : string prop;
  id : string prop;
  managed : bool prop;
  name : string prop;
}

let make ~domain_id ~managed ~name __id =
  let __type = "aws_datazone_environment_blueprint" in
  let __attrs =
    ({
       tf_name = __id;
       blueprint_provider =
         Prop.computed __type __id "blueprint_provider";
       description = Prop.computed __type __id "description";
       domain_id = Prop.computed __type __id "domain_id";
       id = Prop.computed __type __id "id";
       managed = Prop.computed __type __id "managed";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datazone_environment_blueprint
        (aws_datazone_environment_blueprint ~domain_id ~managed ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ~domain_id ~managed ~name __id =
  let (r : _ Tf_core.resource) =
    make ~domain_id ~managed ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
