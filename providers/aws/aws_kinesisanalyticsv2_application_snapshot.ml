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

type aws_kinesisanalyticsv2_application_snapshot = {
  application_name : string prop;
  id : string prop option; [@option]
  snapshot_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kinesisanalyticsv2_application_snapshot) -> ()

let yojson_of_aws_kinesisanalyticsv2_application_snapshot =
  (function
   | {
       application_name = v_application_name;
       id = v_id;
       snapshot_name = v_snapshot_name;
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
         let arg = yojson_of_prop yojson_of_string v_snapshot_name in
         ("snapshot_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_application_name
         in
         ("application_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_kinesisanalyticsv2_application_snapshot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kinesisanalyticsv2_application_snapshot

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_kinesisanalyticsv2_application_snapshot ?id ?timeouts
    ~application_name ~snapshot_name () :
    aws_kinesisanalyticsv2_application_snapshot =
  { application_name; id; snapshot_name; timeouts }

type t = {
  application_name : string prop;
  application_version_id : float prop;
  id : string prop;
  snapshot_creation_timestamp : string prop;
  snapshot_name : string prop;
}

let make ?id ?timeouts ~application_name ~snapshot_name __id =
  let __type = "aws_kinesisanalyticsv2_application_snapshot" in
  let __attrs =
    ({
       application_name =
         Prop.computed __type __id "application_name";
       application_version_id =
         Prop.computed __type __id "application_version_id";
       id = Prop.computed __type __id "id";
       snapshot_creation_timestamp =
         Prop.computed __type __id "snapshot_creation_timestamp";
       snapshot_name = Prop.computed __type __id "snapshot_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesisanalyticsv2_application_snapshot
        (aws_kinesisanalyticsv2_application_snapshot ?id ?timeouts
           ~application_name ~snapshot_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~application_name
    ~snapshot_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~application_name ~snapshot_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
