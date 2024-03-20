(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type broker_engine_types__engine_versions = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_engine_types__engine_versions) -> ()

let yojson_of_broker_engine_types__engine_versions =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : broker_engine_types__engine_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_engine_types__engine_versions

[@@@deriving.end]

type broker_engine_types = {
  engine_type : string prop;
  engine_versions : broker_engine_types__engine_versions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_engine_types) -> ()

let yojson_of_broker_engine_types =
  (function
   | {
       engine_type = v_engine_type;
       engine_versions = v_engine_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_engine_types__engine_versions
             v_engine_versions
         in
         ("engine_versions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine_type in
         ("engine_type", arg) :: bnds
       in
       `Assoc bnds
    : broker_engine_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_engine_types

[@@@deriving.end]

type aws_mq_broker_engine_types = {
  engine_type : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mq_broker_engine_types) -> ()

let yojson_of_aws_mq_broker_engine_types =
  (function
   | { engine_type = v_engine_type; id = v_id } ->
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
         match v_engine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_mq_broker_engine_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mq_broker_engine_types

[@@@deriving.end]

let aws_mq_broker_engine_types ?engine_type ?id () :
    aws_mq_broker_engine_types =
  { engine_type; id }

type t = {
  broker_engine_types : broker_engine_types list prop;
  engine_type : string prop;
  id : string prop;
}

let make ?engine_type ?id __id =
  let __type = "aws_mq_broker_engine_types" in
  let __attrs =
    ({
       broker_engine_types =
         Prop.computed __type __id "broker_engine_types";
       engine_type = Prop.computed __type __id "engine_type";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mq_broker_engine_types
        (aws_mq_broker_engine_types ?engine_type ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?engine_type ?id __id =
  let (r : _ Tf_core.resource) = make ?engine_type ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
