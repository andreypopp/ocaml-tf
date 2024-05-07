(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appstream_fleet_stack_association = {
  fleet_name : string prop;
  id : string prop option; [@option]
  stack_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appstream_fleet_stack_association) -> ()

let yojson_of_aws_appstream_fleet_stack_association =
  (function
   | {
       fleet_name = v_fleet_name;
       id = v_id;
       stack_name = v_stack_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_name in
         ("stack_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_fleet_name in
         ("fleet_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_appstream_fleet_stack_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appstream_fleet_stack_association

[@@@deriving.end]

let aws_appstream_fleet_stack_association ?id ~fleet_name ~stack_name
    () : aws_appstream_fleet_stack_association =
  { fleet_name; id; stack_name }

type t = {
  tf_name : string;
  fleet_name : string prop;
  id : string prop;
  stack_name : string prop;
}

let make ?id ~fleet_name ~stack_name __id =
  let __type = "aws_appstream_fleet_stack_association" in
  let __attrs =
    ({
       tf_name = __id;
       fleet_name = Prop.computed __type __id "fleet_name";
       id = Prop.computed __type __id "id";
       stack_name = Prop.computed __type __id "stack_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_fleet_stack_association
        (aws_appstream_fleet_stack_association ?id ~fleet_name
           ~stack_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~fleet_name ~stack_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~fleet_name ~stack_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
