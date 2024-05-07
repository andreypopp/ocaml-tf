(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_thing_principal_attachment = {
  id : string prop option; [@option]
  principal : string prop;
  thing : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_thing_principal_attachment) -> ()

let yojson_of_aws_iot_thing_principal_attachment =
  (function
   | { id = v_id; principal = v_principal; thing = v_thing } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thing in
         ("thing", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iot_thing_principal_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_thing_principal_attachment

[@@@deriving.end]

let aws_iot_thing_principal_attachment ?id ~principal ~thing () :
    aws_iot_thing_principal_attachment =
  { id; principal; thing }

type t = {
  tf_name : string;
  id : string prop;
  principal : string prop;
  thing : string prop;
}

let make ?id ~principal ~thing __id =
  let __type = "aws_iot_thing_principal_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       thing = Prop.computed __type __id "thing";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing_principal_attachment
        (aws_iot_thing_principal_attachment ?id ~principal ~thing ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~principal ~thing __id =
  let (r : _ Tf_core.resource) = make ?id ~principal ~thing __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
