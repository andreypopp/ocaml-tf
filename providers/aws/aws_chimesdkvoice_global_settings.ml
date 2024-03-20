(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type voice_connector = { cdr_bucket : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : voice_connector) -> ()

let yojson_of_voice_connector =
  (function
   | { cdr_bucket = v_cdr_bucket } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cdr_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdr_bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : voice_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_voice_connector

[@@@deriving.end]

type aws_chimesdkvoice_global_settings = {
  id : string prop option; [@option]
  voice_connector : voice_connector list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chimesdkvoice_global_settings) -> ()

let yojson_of_aws_chimesdkvoice_global_settings =
  (function
   | { id = v_id; voice_connector = v_voice_connector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_voice_connector v_voice_connector
         in
         ("voice_connector", arg) :: bnds
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
    : aws_chimesdkvoice_global_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chimesdkvoice_global_settings

[@@@deriving.end]

let voice_connector ?cdr_bucket () : voice_connector = { cdr_bucket }

let aws_chimesdkvoice_global_settings ?id ~voice_connector () :
    aws_chimesdkvoice_global_settings =
  { id; voice_connector }

type t = { id : string prop }

let make ?id ~voice_connector __id =
  let __type = "aws_chimesdkvoice_global_settings" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chimesdkvoice_global_settings
        (aws_chimesdkvoice_global_settings ?id ~voice_connector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~voice_connector __id =
  let (r : _ Tf_core.resource) = make ?id ~voice_connector __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
