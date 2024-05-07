(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_event_configurations = {
  event_configurations : (string * bool prop) list;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_event_configurations) -> ()

let yojson_of_aws_iot_event_configurations =
  (function
   | { event_configurations = v_event_configurations; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_bool v1 in
                   `List [ v0; v1 ])
             v_event_configurations
         in
         ("event_configurations", arg) :: bnds
       in
       `Assoc bnds
    : aws_iot_event_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_event_configurations

[@@@deriving.end]

let aws_iot_event_configurations ?id ~event_configurations () :
    aws_iot_event_configurations =
  { event_configurations; id }

type t = {
  tf_name : string;
  event_configurations : (string * bool) list prop;
  id : string prop;
}

let make ?id ~event_configurations __id =
  let __type = "aws_iot_event_configurations" in
  let __attrs =
    ({
       tf_name = __id;
       event_configurations =
         Prop.computed __type __id "event_configurations";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_event_configurations
        (aws_iot_event_configurations ?id ~event_configurations ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~event_configurations __id =
  let (r : _ Tf_core.resource) =
    make ?id ~event_configurations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
