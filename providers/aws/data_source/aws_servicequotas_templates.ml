(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type templates = unit [@@deriving_inline yojson_of]

let _ = fun (_ : templates) -> ()

let yojson_of_templates =
  (yojson_of_unit : templates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_templates

[@@@deriving.end]

type aws_servicequotas_templates = {
  region : string prop;
  templates : templates list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicequotas_templates) -> ()

let yojson_of_aws_servicequotas_templates =
  (function
   | { region = v_region; templates = v_templates } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_templates v_templates in
         ("templates", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       `Assoc bnds
    : aws_servicequotas_templates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicequotas_templates

[@@@deriving.end]

let templates () = ()

let aws_servicequotas_templates ?(templates = []) ~region () :
    aws_servicequotas_templates =
  { region; templates }

type t = { tf_name : string; id : string prop; region : string prop }

let make ?(templates = []) ~region __id =
  let __type = "aws_servicequotas_templates" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicequotas_templates
        (aws_servicequotas_templates ~templates ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?(templates = []) ~region __id =
  let (r : _ Tf_core.resource) = make ~templates ~region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
