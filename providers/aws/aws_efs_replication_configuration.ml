(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination = {
  availability_zone_name : string prop option; [@option]
  file_system_id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination) -> ()

let yojson_of_destination =
  (function
   | {
       availability_zone_name = v_availability_zone_name;
       file_system_id = v_file_system_id;
       kms_key_id = v_kms_key_id;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_system_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_efs_replication_configuration = {
  id : string prop option; [@option]
  source_file_system_id : string prop;
  destination : destination list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_replication_configuration) -> ()

let yojson_of_aws_efs_replication_configuration =
  (function
   | {
       id = v_id;
       source_file_system_id = v_source_file_system_id;
       destination = v_destination;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination) v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_file_system_id
         in
         ("source_file_system_id", arg) :: bnds
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
    : aws_efs_replication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_replication_configuration

[@@@deriving.end]

let destination ?availability_zone_name ?file_system_id ?kms_key_id
    ?region () : destination =
  { availability_zone_name; file_system_id; kms_key_id; region }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_efs_replication_configuration ?id ?timeouts
    ~source_file_system_id ~destination () :
    aws_efs_replication_configuration =
  { id; source_file_system_id; destination; timeouts }

type t = {
  tf_name : string;
  creation_time : string prop;
  id : string prop;
  original_source_file_system_arn : string prop;
  source_file_system_arn : string prop;
  source_file_system_id : string prop;
  source_file_system_region : string prop;
}

let make ?id ?timeouts ~source_file_system_id ~destination __id =
  let __type = "aws_efs_replication_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       creation_time = Prop.computed __type __id "creation_time";
       id = Prop.computed __type __id "id";
       original_source_file_system_arn =
         Prop.computed __type __id "original_source_file_system_arn";
       source_file_system_arn =
         Prop.computed __type __id "source_file_system_arn";
       source_file_system_id =
         Prop.computed __type __id "source_file_system_id";
       source_file_system_region =
         Prop.computed __type __id "source_file_system_region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_replication_configuration
        (aws_efs_replication_configuration ?id ?timeouts
           ~source_file_system_id ~destination ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~source_file_system_id
    ~destination __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~source_file_system_id ~destination __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
