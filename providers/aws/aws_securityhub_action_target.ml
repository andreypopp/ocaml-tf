(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_action_target = {
  description : string prop;
  id : string prop option; [@option]
  identifier : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_action_target) -> ()

let yojson_of_aws_securityhub_action_target =
  (function
   | {
       description = v_description;
       id = v_id;
       identifier = v_identifier;
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
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : aws_securityhub_action_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_action_target

[@@@deriving.end]

let aws_securityhub_action_target ?id ~description ~identifier ~name
    () : aws_securityhub_action_target =
  { description; id; identifier; name }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  identifier : string prop;
  name : string prop;
}

let make ?id ~description ~identifier ~name __id =
  let __type = "aws_securityhub_action_target" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_action_target
        (aws_securityhub_action_target ?id ~description ~identifier
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~description ~identifier ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~description ~identifier ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
