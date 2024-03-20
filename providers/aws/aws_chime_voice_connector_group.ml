(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connector = {
  priority : float prop;
  voice_connector_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connector) -> ()

let yojson_of_connector =
  (function
   | {
       priority = v_priority;
       voice_connector_id = v_voice_connector_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_voice_connector_id
         in
         ("voice_connector_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       `Assoc bnds
    : connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connector

[@@@deriving.end]

type aws_chime_voice_connector_group = {
  id : string prop option; [@option]
  name : string prop;
  connector : connector list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chime_voice_connector_group) -> ()

let yojson_of_aws_chime_voice_connector_group =
  (function
   | { id = v_id; name = v_name; connector = v_connector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_connector v_connector in
         ("connector", arg) :: bnds
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
       `Assoc bnds
    : aws_chime_voice_connector_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chime_voice_connector_group

[@@@deriving.end]

let connector ~priority ~voice_connector_id () : connector =
  { priority; voice_connector_id }

let aws_chime_voice_connector_group ?id ~name ~connector () :
    aws_chime_voice_connector_group =
  { id; name; connector }

type t = { id : string prop; name : string prop }

let make ?id ~name ~connector __id =
  let __type = "aws_chime_voice_connector_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector_group
        (aws_chime_voice_connector_group ?id ~name ~connector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~connector __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~connector __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
