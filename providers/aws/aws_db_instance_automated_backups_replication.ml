(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_db_instance_automated_backups_replication = {
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  pre_signed_url : string prop option; [@option]
  retention_period : float prop option; [@option]
  source_db_instance_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_instance_automated_backups_replication) -> ()

let yojson_of_aws_db_instance_automated_backups_replication =
  (function
   | {
       id = v_id;
       kms_key_id = v_kms_key_id;
       pre_signed_url = v_pre_signed_url;
       retention_period = v_retention_period;
       source_db_instance_arn = v_source_db_instance_arn;
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
         let arg =
           yojson_of_prop yojson_of_string v_source_db_instance_arn
         in
         ("source_db_instance_arn", arg) :: bnds
       in
       let bnds =
         match v_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pre_signed_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pre_signed_url", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_db_instance_automated_backups_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_instance_automated_backups_replication

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_db_instance_automated_backups_replication ?id ?kms_key_id
    ?pre_signed_url ?retention_period ?timeouts
    ~source_db_instance_arn () :
    aws_db_instance_automated_backups_replication =
  {
    id;
    kms_key_id;
    pre_signed_url;
    retention_period;
    source_db_instance_arn;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  kms_key_id : string prop;
  pre_signed_url : string prop;
  retention_period : float prop;
  source_db_instance_arn : string prop;
}

let make ?id ?kms_key_id ?pre_signed_url ?retention_period ?timeouts
    ~source_db_instance_arn __id =
  let __type = "aws_db_instance_automated_backups_replication" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       pre_signed_url = Prop.computed __type __id "pre_signed_url";
       retention_period =
         Prop.computed __type __id "retention_period";
       source_db_instance_arn =
         Prop.computed __type __id "source_db_instance_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_instance_automated_backups_replication
        (aws_db_instance_automated_backups_replication ?id
           ?kms_key_id ?pre_signed_url ?retention_period ?timeouts
           ~source_db_instance_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?pre_signed_url
    ?retention_period ?timeouts ~source_db_instance_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?pre_signed_url ?retention_period ?timeouts
      ~source_db_instance_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
