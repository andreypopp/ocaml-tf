(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_neptune_orderable_db_instance = {
  engine : string prop option; [@option]
  engine_version : string prop option; [@option]
  id : string prop option; [@option]
  instance_class : string prop option; [@option]
  license_model : string prop option; [@option]
  preferred_instance_classes : string prop list option; [@option]
  vpc : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_neptune_orderable_db_instance) -> ()

let yojson_of_aws_neptune_orderable_db_instance =
  (function
   | {
       engine = v_engine;
       engine_version = v_engine_version;
       id = v_id;
       instance_class = v_instance_class;
       license_model = v_license_model;
       preferred_instance_classes = v_preferred_instance_classes;
       vpc = v_vpc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vpc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_instance_classes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_instance_classes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_class", arg in
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
         match v_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_neptune_orderable_db_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_neptune_orderable_db_instance

[@@@deriving.end]

let aws_neptune_orderable_db_instance ?engine ?engine_version ?id
    ?instance_class ?license_model ?preferred_instance_classes ?vpc
    () : aws_neptune_orderable_db_instance =
  {
    engine;
    engine_version;
    id;
    instance_class;
    license_model;
    preferred_instance_classes;
    vpc;
  }

type t = {
  availability_zones : string list prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  instance_class : string prop;
  license_model : string prop;
  max_iops_per_db_instance : float prop;
  max_iops_per_gib : float prop;
  max_storage_size : float prop;
  min_iops_per_db_instance : float prop;
  min_iops_per_gib : float prop;
  min_storage_size : float prop;
  multi_az_capable : bool prop;
  preferred_instance_classes : string list prop;
  read_replica_capable : bool prop;
  storage_type : string prop;
  supports_enhanced_monitoring : bool prop;
  supports_iam_database_authentication : bool prop;
  supports_iops : bool prop;
  supports_performance_insights : bool prop;
  supports_storage_encryption : bool prop;
  vpc : bool prop;
}

let make ?engine ?engine_version ?id ?instance_class ?license_model
    ?preferred_instance_classes ?vpc __id =
  let __type = "aws_neptune_orderable_db_instance" in
  let __attrs =
    ({
       availability_zones =
         Prop.computed __type __id "availability_zones";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       instance_class = Prop.computed __type __id "instance_class";
       license_model = Prop.computed __type __id "license_model";
       max_iops_per_db_instance =
         Prop.computed __type __id "max_iops_per_db_instance";
       max_iops_per_gib =
         Prop.computed __type __id "max_iops_per_gib";
       max_storage_size =
         Prop.computed __type __id "max_storage_size";
       min_iops_per_db_instance =
         Prop.computed __type __id "min_iops_per_db_instance";
       min_iops_per_gib =
         Prop.computed __type __id "min_iops_per_gib";
       min_storage_size =
         Prop.computed __type __id "min_storage_size";
       multi_az_capable =
         Prop.computed __type __id "multi_az_capable";
       preferred_instance_classes =
         Prop.computed __type __id "preferred_instance_classes";
       read_replica_capable =
         Prop.computed __type __id "read_replica_capable";
       storage_type = Prop.computed __type __id "storage_type";
       supports_enhanced_monitoring =
         Prop.computed __type __id "supports_enhanced_monitoring";
       supports_iam_database_authentication =
         Prop.computed __type __id
           "supports_iam_database_authentication";
       supports_iops = Prop.computed __type __id "supports_iops";
       supports_performance_insights =
         Prop.computed __type __id "supports_performance_insights";
       supports_storage_encryption =
         Prop.computed __type __id "supports_storage_encryption";
       vpc = Prop.computed __type __id "vpc";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_neptune_orderable_db_instance
        (aws_neptune_orderable_db_instance ?engine ?engine_version
           ?id ?instance_class ?license_model
           ?preferred_instance_classes ?vpc ());
    attrs = __attrs;
  }

let register ?tf_module ?engine ?engine_version ?id ?instance_class
    ?license_model ?preferred_instance_classes ?vpc __id =
  let (r : _ Tf_core.resource) =
    make ?engine ?engine_version ?id ?instance_class ?license_model
      ?preferred_instance_classes ?vpc __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
