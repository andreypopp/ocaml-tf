(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type broker_instance_options__availability_zones = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_instance_options__availability_zones) -> ()

let yojson_of_broker_instance_options__availability_zones =
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
    : broker_instance_options__availability_zones ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_instance_options__availability_zones

[@@@deriving.end]

type broker_instance_options = {
  availability_zones :
    broker_instance_options__availability_zones list;
      [@default []] [@yojson_drop_default ( = )]
  engine_type : string prop;
  host_instance_type : string prop;
  storage_type : string prop;
  supported_deployment_modes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  supported_engine_versions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_instance_options) -> ()

let yojson_of_broker_instance_options =
  (function
   | {
       availability_zones = v_availability_zones;
       engine_type = v_engine_type;
       host_instance_type = v_host_instance_type;
       storage_type = v_storage_type;
       supported_deployment_modes = v_supported_deployment_modes;
       supported_engine_versions = v_supported_engine_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_supported_engine_versions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_supported_engine_versions
           in
           let bnd = "supported_engine_versions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_supported_deployment_modes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_supported_deployment_modes
           in
           let bnd = "supported_deployment_modes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_type in
         ("storage_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_host_instance_type
         in
         ("host_instance_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine_type in
         ("engine_type", arg) :: bnds
       in
       let bnds =
         if [] = v_availability_zones then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_broker_instance_options__availability_zones)
               v_availability_zones
           in
           let bnd = "availability_zones", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : broker_instance_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_instance_options

[@@@deriving.end]

type aws_mq_broker_instance_type_offerings = {
  engine_type : string prop option; [@option]
  host_instance_type : string prop option; [@option]
  id : string prop option; [@option]
  storage_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mq_broker_instance_type_offerings) -> ()

let yojson_of_aws_mq_broker_instance_type_offerings =
  (function
   | {
       engine_type = v_engine_type;
       host_instance_type = v_host_instance_type;
       id = v_id;
       storage_type = v_storage_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
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
         match v_host_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_instance_type", arg in
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
    : aws_mq_broker_instance_type_offerings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mq_broker_instance_type_offerings

[@@@deriving.end]

let aws_mq_broker_instance_type_offerings ?engine_type
    ?host_instance_type ?id ?storage_type () :
    aws_mq_broker_instance_type_offerings =
  { engine_type; host_instance_type; id; storage_type }

type t = {
  tf_name : string;
  broker_instance_options : broker_instance_options list prop;
  engine_type : string prop;
  host_instance_type : string prop;
  id : string prop;
  storage_type : string prop;
}

let make ?engine_type ?host_instance_type ?id ?storage_type __id =
  let __type = "aws_mq_broker_instance_type_offerings" in
  let __attrs =
    ({
       tf_name = __id;
       broker_instance_options =
         Prop.computed __type __id "broker_instance_options";
       engine_type = Prop.computed __type __id "engine_type";
       host_instance_type =
         Prop.computed __type __id "host_instance_type";
       id = Prop.computed __type __id "id";
       storage_type = Prop.computed __type __id "storage_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mq_broker_instance_type_offerings
        (aws_mq_broker_instance_type_offerings ?engine_type
           ?host_instance_type ?id ?storage_type ());
    attrs = __attrs;
  }

let register ?tf_module ?engine_type ?host_instance_type ?id
    ?storage_type __id =
  let (r : _ Tf_core.resource) =
    make ?engine_type ?host_instance_type ?id ?storage_type __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
